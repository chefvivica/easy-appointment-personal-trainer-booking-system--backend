class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    render json: trainers.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
    }, :except => [:created_at,:updated_at])  
  end
  
  def show
    trainer = Trainer.find(params[:id])
    render json: trainer.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
    }, :except => [:created_at,:updated_at])   
  end

  def create
    trainer = Trainer.new(trainer_params)
    trainer.save
    render json: trainer.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
    }, :except => [:created_at,:updated_at])   
  end

  def update
    trainer = Trainer.find(params[:id])
    trainer.update(trainer_params)
    render json: trainer.to_json(:include => {
      :events => {:only => [:title,:start,:end,:allDay,:event_type,:trainer_id, :details]},
    }, :except => [:created_at,:updated_at]) 
  end

  def delete
    trainer = Trainer.find(params[:id])
    trainer.destroy
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :image, :bio)
  end
end
