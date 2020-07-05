class User < ApplicationRecord
  has_many :requests
  has_many :trainers, through: :requests
  has_many :appointments
  has_many :events, through: :appointments
end
