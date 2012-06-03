class Color < ActiveRecord::Base
  attr_accessible :name
  belongs_to :pet
end
