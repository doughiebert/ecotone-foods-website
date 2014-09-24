Rails.application.routes.draw do
  root 'welcome#index'  

  resource :contact_forms
  resource :wholesale_forms
  resource :review_forms

  comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
