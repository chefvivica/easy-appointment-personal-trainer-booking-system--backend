class RequestsController < ApplicationController

  def create
    request = Request.new(request_params)
    request.save
    render json: request, each_serializer: RequestSerializer
  end

  def update
    request = Request.find(params[:id])
    request.update(request_params)
    render json: request, each_serializer: RequestSerializer
  end

  def delete
    request = Request.find(params[:id])
    request.destroy
    render json: request.to_json  
  end

  private

  def request_params
    params.require(:request).permit(:user_id, :title, :detail, :start, :end, :trainer_id, :color)
  end

end


