class Weatherbox < ActiveRecord::Base
  belongs_to :network
  belongs_to :location
  belongs_to :hardware
  belongs_to :software
  has_one :battery_history
end
