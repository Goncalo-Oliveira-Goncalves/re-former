class User < ApplicationRecord
  validates :username, presence: true, length: 1..50, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: 8..500
end
