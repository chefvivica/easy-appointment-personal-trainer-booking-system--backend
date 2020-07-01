class AppointmentsController < ApplicationController

  def index 
    appointments = Appointment.all
    render json: appointments.to_json 
  end


  def create
    appointment = Appointment.create(appointment_params)
    appointment.save
    render json: appointment.to_json  
  end



  def destroy
    # byebug
    appointment = Appointment.find(params[:id])
    appointment.destroy
    render json: appointment.to_json  
  end

  private
  
  def appointment_params
    params.require(:appointment).permit!
  end

end
