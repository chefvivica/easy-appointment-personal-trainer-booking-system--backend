class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events.to_json(:include => {
      :users => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end


  def show
    event = Event.find(params[:id])
    render json: event.to_json(:include => {
      :users => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end

  # def appiontment
  #   event = Event.find(params[:id])

  #   appiontment= Appiontment.create({
  #     user_id: user_id,
  #     event: event,
  #   })
  #   render json: appiontment
  # end

  def create
    event = Event.new(event_params)
    event.save
    render json: event.to_json(:include => {
      :users => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    render json: event.to_json(:include => {
      :users => {:only => [:username,:image,:email,:phone_number,:password]},
      :trainer => {:only => [:name,:bio,:email,:image]}
    }, :except => [:created_at,:updated_at])  
  end

  def delete
    event = Event.find(params[:id])
    event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :start, :end, :details, :allDay, :trainer_id, :event_type)
  end

end
