class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    render json: trainers, each_serializer: TrainerSerializer
  end
  
  def show
    trainer = Trainer.find(params[:id])
    render json: trainer, each_serializer: TrainerSerializer
  end

end
