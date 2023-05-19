# frozen_string_literal: true

class Store < ApplicationRecord
  belongs_to :user

  has_many :store_contacts, dependent: :destroy
  has_many :store_branches, dependent: :destroy
  has_many :staffs, dependent: :destroy
  has_many :roles, dependent: :destroy

  validates_presence_of :name, :type, :coordinates, :location_name
end
