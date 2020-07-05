class User < ApplicationRecord
  has_many :request 
  has_many :trainers, through: :requests
  has_many :appointments
  has_many :events, through: :appointments
end
