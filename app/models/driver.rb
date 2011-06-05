class Driver < ActiveRecord::Base

  has_many :positions

  has_many :best_laps

end
