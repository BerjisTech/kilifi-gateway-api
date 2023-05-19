# frozen_string_literal: true

class Role < ApplicationRecord
  belongs_to :store

  has_many :staffs, dependent: :destroy

  validates_presence_of :name, :permissions
end
