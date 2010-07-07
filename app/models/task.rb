class Task < ActiveRecord::Base
  belongs_to :location
  
  def completed?
    self.completed
  end
end
