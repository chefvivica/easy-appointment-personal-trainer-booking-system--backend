class Trainer < ApplicationRecord
  has_many :requests 
  has_many :trainers, through: :requests
  has_many :events
end
