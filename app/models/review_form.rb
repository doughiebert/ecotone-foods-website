require 'valid_email'

class ReviewForm < EmailForm
  validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "Please rate our product!"}
  
  attr_accessor :rating
end