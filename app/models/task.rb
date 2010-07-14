class Task < ActiveRecord::Base
  belongs_to :location
  has_one :user, :through => :location
  
  def completed?
    self.completed
  end
end
