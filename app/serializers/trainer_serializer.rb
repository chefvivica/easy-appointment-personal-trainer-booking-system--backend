class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :bio, :sports
  has_many :events
end
