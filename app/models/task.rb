class Task < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :pet
  belongs_to :user
  belongs_to :breed
end
