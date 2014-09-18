class RecommendCategory < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end

  has_many :recommend_category_novel_ships
  has_many :novels, :through => :recommend_category_novel_ships
  
end
