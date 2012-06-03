class Breed < ActiveRecord::Base
  attr_accessible :name
  has_many :tasks
  belongs_to :pet
end
