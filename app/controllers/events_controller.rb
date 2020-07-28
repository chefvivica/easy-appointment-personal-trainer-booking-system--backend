class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events,  each_serializer: EventSerializer
  end


  def show
    event = Event.find(params[:id])
    render json: event,  each_serializer: EventSerializer
  end

  def create
    event = Event.new(event_params)
    event.save
    render json: event,  each_serializer: EventSerializer
  end

  def update
    event = Event.find(params[:id])
    render json: event,  each_serializer: EventSerializer  
  end

  def delete
    event = Event.find(params[:id])
    event.destroy
    render json: event.to_json  
  end

  private

  def event_params
    params.require(:event).permit(:title, :start, :end, :details, :allDay, :trainer_id, :event_type)
  end

end
