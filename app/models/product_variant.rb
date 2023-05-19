class ProductVariant < ApplicationRecord
  belongs_to :product

  validates_presence_of :name, :description, :price_difference
end
