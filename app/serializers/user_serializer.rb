class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :phone_number, :email,:image, :password_digest
  has_many :events
  has_many :requests
  

  
end
