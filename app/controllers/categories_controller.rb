class CategoriesController < ApplicationController
  
  def index
    @novels = Novel.order("id desc").page(params[:page]).per_page(12)
    respond_to do |format|
      format.html
      format.js { render template: 'categories/show'}
    end
  end

  def recent
    @novels = Novel.order("updated_at desc").page(params[:page]).per_page(12)
    respond_to do |format|
      format.html { render template: 'categories/index'}
      format.js { render template: 'categories/show'}
    end
  end

  def newest
    @novels = Novel.order("id desc").page(params[:page]).per_page(12)
    respond_to do |format|
      format.html { render template: 'categories/index'}
      format.js { render template: 'categories/show'}
    end
  end

  def recommend
    if params[:category]
      @category = RecommendCategory.find(params[:category])
      @novels = @category.novels
    else
      novels_id = RecommendCategoryNovelShip.all.map{|ship| ship.novel_id}.join(',')
      @novels = Novel.where("id in (#{novels_id})").show.page(params[:page]).per_page(12)
      respond_to do |format|
        format.html { render template: 'categories/index'}
        format.js { render template: 'categories/show'}
      end
    end
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
