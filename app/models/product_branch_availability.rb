class ProductBranchAvailability < ApplicationRecord
  belongs_to :product
  belongs_to :store_branch
end
