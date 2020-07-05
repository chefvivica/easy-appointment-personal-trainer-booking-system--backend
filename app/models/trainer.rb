class Trainer < ApplicationRecord
  has_many :request 
  has_many :trainers, through: :requests
  has_many :events
end
