module ApplicationHelper
  def cms_url(page_label)
  	page = Comfy::Cms::Page.find_by_label(page_label)
  	page ? page.full_path : 'page/missing'
  end
end
