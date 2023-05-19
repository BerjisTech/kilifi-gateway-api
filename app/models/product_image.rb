# frozen_string_literal: true

class ProductImage < ApplicationRecord
  belongs_to :product

  validates_presence_of :image_url
end
