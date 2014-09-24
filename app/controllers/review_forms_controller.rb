class ReviewFormsController < ApplicationController
  include ApplicationHelper
  
  def new
    @review_form = ReviewForm.new
  end
  
  def create
    @review_form = ReviewForm.new(params[:review_form])
    if @review_form.valid?
      flash[:notice] = "Thanks for your feedback!  It means a lot to us!"
      redirect_to cms_index_url
    else
      render :new
    end
  end
end
