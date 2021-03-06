Refinery::Admin::PagesController.class_eval do
  protected

  def page_params
    params.require(:page).permit(
      :browser_title, :draft, :link_url, :menu_title, :meta_description, :keywords,
      :parent_id, :skip_to_first_child, :show_in_menu, :title, :view_template,
      :layout_template, :custom_slug, parts_attributes: [:id, :title, :body, :position]
    )
  end

  # def sitecard
  #   render '/refinery/sitemap'
  # end

end