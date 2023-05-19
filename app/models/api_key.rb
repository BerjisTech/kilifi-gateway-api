class ApiKey < ApplicationRecord
  belongs_to :user

  before_create :generate_access_token
  before_create :generate_secret_token

  private

  def generate_access_token
    self.access_token = SecureRandom.hex
  end

  def generate_secret_token
    self.secret_token = SecureRandom.hex
  end
end
