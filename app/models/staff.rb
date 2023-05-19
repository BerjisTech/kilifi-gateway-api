class Staff < ApplicationRecord
  belongs_to :user
  belongs_to :store
  belongs_to :role

  validates_presence_of :user_id, :store_id, :role_id
end
