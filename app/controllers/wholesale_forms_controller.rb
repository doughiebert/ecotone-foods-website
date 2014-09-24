class WholesaleFormsController < ApplicationController
  include ApplicationHelper
  
  def new
    @wholesale_form = WholesaleForm.new
  end
  
  def create
    @wholesale_form = WholesaleForm.new(params[:wholesale_form])
    if @wholesale_form.valid?
      flash[:notice] = "Thank you for your inquiry!  Your business is important to us!"
      redirect_to cms_index_url
    else
      render :new
    end
  end
end
