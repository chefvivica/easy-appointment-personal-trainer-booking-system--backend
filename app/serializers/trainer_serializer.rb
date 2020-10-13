class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :bio, :sports,:password_digest
  has_many :events
end
