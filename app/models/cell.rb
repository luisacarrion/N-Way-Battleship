class Cell < ActiveRecord::Base
  attr_accessible :grid_id, :state, :x, :y
  serialize :state
end
