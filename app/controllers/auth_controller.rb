
class AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      # token = JWT.encode({user_id:user.id}, 'super_secret_code')
      render json: user.to_json(:include => {
        :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
        :requests => {:only => [:title,:start,:end,:trainer_id, :detail]},
      }, :except => [:created_at,:updated_at])
     
    else
      render json: {errors: "oops, please try again!"}
    end
  end

  def auto_login
    user = User.find_by(id: request.headers['Authorization'])
    if user
      render json: user.to_json(:include => {
        :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
        :requests => {:only => [:title,:start,:end,:trainer_id, :detail]},
      }, :except => [:created_at,:updated_at]) 
    else 
      render json: {errors: "That ain't no user I ever heard of!"}
    end
    
  end
end