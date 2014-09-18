class Novel < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end
  
  belongs_to :category
  has_many :articles

  scope :show, -> {where(:is_show => true)}
  def recrawl_articles_text
    Article.where("novel_id = #{id} and is_show = true").select("id").find_in_batches(:batch_size => 100) do |articles|
      articles.each do |article|
        texts = ArticleText.select("id").where("article_id = #{article.id}")
        ArticleWorker.perform_async(article.id) unless texts.present?
      end 
    end
  end


  include Tire::Model::Search
  include Tire::Model::Callbacks

  mapping do
    indexes :id, type: 'integer'
    indexes :author, :analyzer => "cjk"
    indexes :name, :analyzer => "cjk"
  end

  def self.search(params)
    tire.search(page: params[:page], per_page: 5, load: true) do
      query { string params[:keyword], default_operator: "AND" }
    end
  end

end
