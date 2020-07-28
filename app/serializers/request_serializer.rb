class RequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :detail, :start, :end, :trainer_id, :color
  belongs_to :user
  belongs_to :trainer
end
