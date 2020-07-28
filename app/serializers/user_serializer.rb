class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  default_url_options[:host] = 'api.demo.dev'
  attributes :id, :username, :phone_number, :email,:image, :password_digest
  has_many :events
  has_many :requests
  

  
end
