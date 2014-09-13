class ArticlesController < ApplicationController
  
  def show
    @novel = Novel.find(params[:novel_id])
    @article = Article.joins(:article_text).select('articles.id, novel_id, text, title, num').find(params[:id])
    @novel_articles = Article.where(novel_id: params[:novel_id]).select("id, novel_id, subject,title")
  end
  
end
