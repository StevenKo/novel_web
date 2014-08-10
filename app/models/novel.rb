class Novel < ActiveRecord::Base
  belongs_to :category
  has_many :articles

  scope :show, where(:is_show => true)

  def recrawl_articles_text
    Article.where("novel_id = #{id} and is_show = true").select("id").find_in_batches(:batch_size => 100) do |articles|
      articles.each do |article|
        texts = ArticleText.select("id").where("article_id = #{article.id}")
        ArticleWorker.perform_async(article.id) unless texts.present?
      end 
    end
  end
end
