class Race < ActiveRecord::Base

  has_one :best_lap

  has_many :positions




end
