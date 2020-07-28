class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :trainer_id, :start, :end, :details, :allDay, :color
  has_many :users
  belongs_to :trainer
end
