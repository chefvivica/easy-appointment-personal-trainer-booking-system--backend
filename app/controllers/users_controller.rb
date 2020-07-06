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
    user = User.new(user_params)
    user.save
    render json: user.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
      :requests => {:only => [:title,:start,:end,:trainer_id, :detail]},
    }, :except => [:created_at,:updated_at])  
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
      :requests => {:only => [:title,:start,:end,:trainer_id, :detail]},
    }, :except => [:created_at,:updated_at])  
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
