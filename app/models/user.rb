class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles
  has_many :pets
  has_many :appointments

  def is_role?
  	self.roles.first.title
  end

  def self.get_doctors
		User.joins(:roles).where("roles.title LIKE ?" , "%Doctor%")
	end
end
