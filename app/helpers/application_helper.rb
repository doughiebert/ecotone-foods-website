module ApplicationHelper
  def cms_url(page_label)
  	page = @cms_site.pages.find_by_label(page_label)
  	page ? page.url : 'page/missing'
  end
end
