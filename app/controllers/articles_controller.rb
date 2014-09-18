class ArticlesController < ApplicationController
  
  def show
    @novel = Novel.friendly.find(params[:novel_id])
    @article = Article.joins(:article_text).select('articles.id, novel_id, text, title, num, subject, slug').friendly.find(params[:id])
    @novel_articles = Article.where(novel_id: @novel.id).select("id, novel_id, subject,title,slug")

    @novel_articles.each_with_index do |article,i|
      if article.id == @article.id 
        @previous_article = @novel_articles[i-1]
        @next_article = @novel_articles[i+1]
      end
    end
  end
  
end
