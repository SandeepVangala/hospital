class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :user

  def find_doctor?
  	User.find self.doctor_id
  end
end
