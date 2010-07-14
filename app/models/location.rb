class Location < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, :dependent => :nullify
  has_friendly_id :name, :use_slug => true, :scope => :user

end
