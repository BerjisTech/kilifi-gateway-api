class StoreContact < ApplicationRecord
  belongs_to :store

  validates_presence_of :contact_name, :contact_phone, :contact_email
end
