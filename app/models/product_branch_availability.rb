class ProductBranchAvailability < ApplicationRecord
  belongs_to :product
  belongs_to :store_branch

  validates_presence_of :availability
end
