class Staff < ApplicationRecord
  belongs_to :user
  belongs_to :store
  belongs_to :role
end
