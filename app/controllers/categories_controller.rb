class CategoriesController < ApplicationController
  def index
  end

  def recommend
    ggg
  end

  def show
    @category = Category.find(params[:id])
    @novels = @category.novels.order("updated_at desc").page(params[:page]).per_page(12)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
