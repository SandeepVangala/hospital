class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.roles.map(&:title).include?("Customer")
    	cust_dashboard_index_path
    	elsif resource.roles.map(&:title).include?("Receptionist")
    		recption_dashboard_index_path
    		elsif resource.roles.map(&:title).include?("Doctor")
    			doc_dashboard_index_path
   	end
  end

end
