class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    render json: trainers, each_serializer: TrainerSerializer
  end
  
  def show
    trainer = Trainer.find(params[:id])
    render json: trainer, each_serializer: TrainerSerializer
  end

  def create
    trainer = Trainer.new(
      name: params[:name],
      password_digest: params[:password],
      email: params[:email],
      image: params[:image]
    )
    trainer.save
    render json: trainer,  each_serializer: TrainerSerializer
  end
    # if user.save
    #   token = JWT.encode({user_id:user.id}, 'super_secret_code')
    #   render json: {user: UserSerializer.new(user), token:token } 
    # else
    #   render json: {errors: user.errors.full_messages}
    # end


end
