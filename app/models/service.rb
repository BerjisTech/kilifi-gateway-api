class Service < ApplicationRecord
  belongs_to :user
  belongs_to :service_type
end
