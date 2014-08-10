class RecommendCategoryNovelShip < ActiveRecord::Base

  belongs_to :novel
  belongs_to :recommend_category
end
