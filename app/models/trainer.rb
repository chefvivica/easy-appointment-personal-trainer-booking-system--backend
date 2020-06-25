class Trainer < ApplicationRecord
  has_many :events
  has_many :comments
  has_many :users, through: :comments
end
