class Location < ActiveRecord::Base
  has_many :tasks
  has_friendly_id :name, :use_slug => true

end
