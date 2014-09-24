require 'valid_email'

class EmailForm
  include ActiveModel::Model
  validates :name, presence: true
  validates :email, presence: true, email: true
  validates :phone_number, presence: false, phone_number: { ten_digits: true, seven_digits: true, allow_blank: true }
  validates :message, presence: true, length: { minimum: 3, maximum: 500 }
  
  attr_accessor :name, :email, :phone_number, :message
end