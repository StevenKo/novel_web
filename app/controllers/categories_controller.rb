class CategoriesController < ApplicationController
  def index
  end

  def recommend
  end

  def show
    @category = Category.find(params[:id])
  end
end
