class User < ApplicationRecord
  has_many :requests
  has_many :trainers, through: :requests
  has_many :appointments
  has_many :events, through: :appointments

  validates :username, uniqueness: true
  validates :password, presence: true, on: :create
  has_secure_password
end
