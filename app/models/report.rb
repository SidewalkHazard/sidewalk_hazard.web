class Report < ActiveRecord::Base
  attr_accessible :complete, :description, :lat, :long, :phone_id, :why
end
