class Delivery < ApplicationRecord
  belongs_to :product

  validates_presence_of :delivery_option, :delivery_price
end
