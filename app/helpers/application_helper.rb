module ApplicationHelper
  
  # def browser_title(yield_title=nil)
  #   [
  #     (yield_title if yield_title.present?),
  #     @meta.browser_title.present? ? @meta.browser_title : @meta.path,
  #     Refinery::Core.site_name
  #   ].compact.join(" - ")
  # end  

  def my_browser_title(yield_title=nil)
    [
      (yield_title if yield_title.present?),
      @meta.browser_title.present? ? @meta.browser_title : @meta.path
    ].compact.join(" - ")
  end 

  # def sub_menu_pages(page)
  #   Refinery::Menu.new(refinery_menu_pages.detect{ |item| item.original_id == page.id }.children)
  # end

end
