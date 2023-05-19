# frozen_string_literal: true

class StoreBranch < ApplicationRecord
  belongs_to :store

  has_many :products, dependent: :destroy

  validates_presence_of :name, :coordinates, :location_name
end
