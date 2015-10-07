class CustDashboardController < ApplicationController
  def index
  	@current_user_pets = current_user.pets
  	
  end
end
