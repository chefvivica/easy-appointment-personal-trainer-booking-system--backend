class RequestsController < ApplicationController
  def index
    requests = Request.all
    render json: requests.to_json(:include => {
      :user => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end


  def show
    request = Request.find(params[:id])
    render json: request.to_json(:include => {
      :user => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end

  def create
    request = Request.new(request_params)
    request.save
    render json: request.to_json(:include => {
      :user => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end

  def update
    request = Request.find(params[:id])
    request.update(request_params)
    render json: request.to_json(:include => {
      :user => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end

  def delete
    request = Request.find(params[:id])
    request.destroy
    render json: request.to_json  
  end

  private

  def request_params
    params.require(:request).permit(:title, :start, :end, :details, :allDay, :trainer_id, :request_type)
  end

end


