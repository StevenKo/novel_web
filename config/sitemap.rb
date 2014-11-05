require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://novelking.cc'
SitemapGenerator::Sitemap.create do
  add '/apply-writer', :changefreq => 'weekly'
  # add '/categories', :changefreq => 'weekly'
  add '/download', :changefreq => 'weekly'
  # add '/categories/recommend', :changefreq => 'weekly'
  # add '/jobs', :changefreq => 'weekly'
  # add '/categories/recent', :changefreq => 'weekly'
  # add '/categories/newest', :changefreq => 'weekly'


  # Category.select("id,slug,updated_at").find_each do |category|
  #   add category_path(category), lastmod: category.updated_at, changefreq: 'monthly'
  # end

  # RecommendCategory.select("id,slug,updated_at").find_each do |category|
  #   add recommend_path(category), lastmod: category.updated_at, changefreq: 'monthly'
  # end

  # Novel.select("id,slug,updated_at,category_id").find_each do |novel|
  #   add category_novel_path(novel.category,novel), lastmod: novel.updated_at, changefreq: 'monthly'
  # end

  # Article.select("id,slug,updated_at,novel_id").find_in_batches do |articles|
  #   articles.each do |article|
  #     add novel_article_path(article.novel,article), lastmod: article.updated_at, changefreq: 'monthly'
  #   end
  # end

  
end

SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks