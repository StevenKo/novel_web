require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://novelking.cc'
SitemapGenerator::Sitemap.create do
  add '/apply-writer', :changefreq => 'weekly', :priority => 0.9
end

SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks