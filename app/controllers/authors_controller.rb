class AuthorsController < ApplicationController
  
  def show
    @novels = Novel.where("author like ?", "%#{params[:id]}%")
  end
  
end
