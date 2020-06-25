class Event < ApplicationRecord
  belongs_to :trainer 
  has_many :appointments
  has_many :users, through: :appointments
end

