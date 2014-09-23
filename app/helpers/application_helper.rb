module ApplicationHelper

  def cms_index_url
  	@cms_site.pages.root.url
  end
  
  def cms_url(page_label)
  	page = @cms_site.pages.find_by_label(page_label)
  	page ? page.url : 'page/missing'
  end
  
  def hover_image_url(src)
    regular_image_name = src + '1.png'
    regular_asset_path = image_url(regular_image_name)
    hover_asset_path = image_url(src + '2.png')
    image_tag(regular_image_name,
      'data:regular-src' => regular_asset_path,
      'data:hover-src' => hover_asset_path,
      'class' => 'hover-image'
    ).html_safe
  end
end
