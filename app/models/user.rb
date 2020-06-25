class User < ApplicationRecord
  has_many :appointments
  has_many :events, through: :appointments
  has_many :comments
  has_many :trainers, through: :comments
end
