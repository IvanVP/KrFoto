class SitemapController < ::Refinery::FastController
  def show
  end

  def sitecard
    render '/sitemap/sitemap'
  end

end