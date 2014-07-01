class WelcomeController < ApplicationController
  def index
	  first_site = Comfy::Cms::Site.first
    if first_site
      redirect_to first_site.pages.root.url 
    else
      render text: 'no site defined, use /admin'
    end
  end
end
