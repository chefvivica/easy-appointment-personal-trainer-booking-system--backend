class UsersController < ApplicationController
  
  def index 
    users = User.all 
    render  json:users.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
      :requests => {:only => [:title,:start,:end,:trainer_id, :detail]},
    }, :except => [:created_at,:updated_at])  
  end 
  
  def show
    user = User.find(params[:id])
    render json: user.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
      :requests => {:only => [:title,:start,:end,:trainer_id, :detail]},
    }, :except => [:created_at,:updated_at])  
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
      render json: user.to_json
      # token = encode_token(user.id)
      # render json: {user: user, token: token}
    else
      render json: {errors: user.errors.full_messages}
    end

  end

  # def update
  #   user = User.find(params[:id])
  #   user.update(user_params)
  #   render json: user.to_json(:include => {
  #     :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
  #     :requests => {:only => [:title,:start,:end,:trainer_id, :detail]},
  #   }, :except => [:created_at,:updated_at])  
  # end

  def delete
    user = User.find(params[:id])
    user.destroy
    render json: user.to_json  
  end


end
