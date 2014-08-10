class RecommendCategory < ActiveRecord::Base

  has_many :recommend_category_novel_ships
  has_many :novels, :through => :recommend_category_novel_ships
  
end
