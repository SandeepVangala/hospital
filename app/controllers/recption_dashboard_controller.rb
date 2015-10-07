class RecptionDashboardController < ApplicationController
  def index
  end

  def create_appointment
  	pet = Pet.find params["appointment"]["pet_id"]
  	if pet.appointments.create(appointment_params)
  		@result = "appointment created sucessfully."
  	else
  		@result = pet.errors
  	end
  end

  private
  def appointment_params
  	params.require(:appointment).permit(:doctor_id, :date_of_visit)
  end
end
