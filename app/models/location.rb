class Location < ActiveRecord::Base
  has_many :tasks
  accepts_nested_attributes_for :tasks, :allow_destroy => true, :reject_if => proc { |obj| obj.blank? }
  
end
