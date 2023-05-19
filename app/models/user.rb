# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others availab irmable, :lockable, :timeoutable, :tracka
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :owner
  has_many :services
end
