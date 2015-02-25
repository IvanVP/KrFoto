class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sitecard
    @page = ::Refinery::Page.find_by_slug 'karta-saita'
    @pages = Refinery::Page.where(parent_id:nil).order(:lft).live.in_menu

    render 'sitemap/sitemap'
  end

end
