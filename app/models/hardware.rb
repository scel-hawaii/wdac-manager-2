class Hardware < ActiveRecord::Base
  has_many :weatherboxes
  has_many :parts
end
