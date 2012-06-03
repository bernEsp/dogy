class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :code
  # attr_accessible :title, :body
  has_many :tasks
  has_many :pets
  accepts_nested_attributes_for :pets, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true  
end
