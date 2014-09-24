class ContactFormsController < ApplicationController
  include ApplicationHelper
  
  def new
    @contact_form = ContactForm.new
  end
  
  def create
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.valid?
      flash[:notice] = "Thank you for contacting us!  We'll get back to you as soon as possible!"
      redirect_to cms_index_url
    else
      render :new
    end
  end
end
