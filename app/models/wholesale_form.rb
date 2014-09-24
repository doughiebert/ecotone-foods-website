require 'valid_email'

class WholesaleForm < EmailForm
  validates :company, presence: true
  validates :phone_number, presence: true
  
  attr_accessor :company
end