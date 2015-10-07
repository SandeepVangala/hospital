class Pet < ActiveRecord::Base
	before_create :check_user_roles_customer
  belongs_to :user

  private
  def check_user_roles_customer
  	raise self.inspect
  end
end
