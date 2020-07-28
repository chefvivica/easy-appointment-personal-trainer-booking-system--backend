class UsersController < ApplicationController
  
  def index 
    users = User.all 
    render json: users, each_serializer: UserSerializer
  end 
  
  def show
    user = User.find(params[:id])
    render json: user, each_serializer: UserSerializer  
  end

  def create
    user = User.new(
      username: params[:username],
      password: params[:password],
      phone_number: params[:phone_number],
      email: params[:email],
      image: params[:image]
    )
    if user.save
      token = JWT.encode({user_id:user.id}, 'super_secret_code')
      render json: {user: UserSerializer.new(user), token:token } 
    else
      render json: {errors: user.errors.full_messages}
    end

  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user, each_serializer: UserSerializer
  end

  def delete
    user = User.find(params[:id])
    user.destroy
    render json: user.to_json  
  end

  private

  def user_params
    params.require(:user).permit(:username, :password,:phone_number, :email, :image)
  end

end
