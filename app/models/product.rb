# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :store_branch

  has_many :product_variants, dependent: :destroy
  has_many :product_images, dependent: :destroy
  has_many :product_branch_availabilities, dependent: :destroy
  has_many :deliveries, dependent: :destroy

  validates_presence_of :name, :description, :price, :product_type, :availability
end
