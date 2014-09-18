class NovelsController < ApplicationController
  def show
    @novel = Novel.friendly.find(params[:id])
    @category = @novel.category
    novel_articles = @novel.articles
    @articles = novel_articles.each_slice(novel_articles.size/3+1).to_a
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
