class Pet < ActiveRecord::Base
	before_save :check_user_roles_customer
  belongs_to :user
  has_many :appointments

  private
  def check_user_roles_customer
  	self.user.is_role? == "Customer"
  end
end
