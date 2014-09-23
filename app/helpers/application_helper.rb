module ApplicationHelper

  def cms_index_url
  	@cms_site.pages.root.url
  end
  
  def cms_url(page_label)
  	page = @cms_site.pages.find_by_label(page_label)
  	page ? page.url : 'page/missing'
  end
  
  def hover_image_url(src)
    tags = image_tag(src + '1.png', 'class' => 'regular') + image_tag(src + '2.png', 'class' => 'hover')
    tags.html_safe 
  end
end
