# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.philnoug.com/"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  add qui_sommes_nous_path
  add logiciels_path
  add services_path
  add partenaires_path
  add nos_clients_path
  add portfolio_path
  add contact_path
  add planning_path
  add camino_path
  add prestofacto_path
  add crystal_data_path
  add blog_path
  add confidentialite_path

  Post.where(published: true).find_each do |post|
    add post_path(post), lastmod: post.updated_at
  end
  
end
