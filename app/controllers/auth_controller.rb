
class AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = JWT.encode({user_id:user.id}, 'super_secret_code')
      render json: {user: UserSerializer.new(user), token:token } 
    
    else
      render json: {errors: "oops, please try again!"}
    end
  end

  def auto_login
    user = User.find_by(id: JWT.decode(request.headers["Authorization"],'super_secret_code' )[0]['user_id'])
    if user
      render json: user, each_serializer: UserSerializer
    else 
      render json: {errors: "That ain't no user I ever heard of!"}
    end
    
  end
end
