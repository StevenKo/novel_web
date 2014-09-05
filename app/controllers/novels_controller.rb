class NovelsController < ApplicationController
  def show
    @novel = Novel.find(params[:id])
    @articles = @novel.articles.each_slice(3).to_a
  end

  def index
  end

  def search
    params[:page] ||= 1
    @novels = Novel.search(params)

    respond_to do |format|
      format.html
      format.js
    end
  end
end
