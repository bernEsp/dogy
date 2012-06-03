class Pet < ActiveRecord::Base
  attr_accessible :caracteristicas, :name, :trucos, :age, :sex, :born
  has_many :tasks
  has_one :breed
  has_one :color
  belongs_to :user
  
  accepts_nested_attributes_for :breed
   accepts_nested_attributes_for :color
end
