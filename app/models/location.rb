class Location < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_friendly_id :name, :use_slug => true, :scope => :user

end
