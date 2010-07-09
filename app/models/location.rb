class Location < ActiveRecord::Base
  has_many :tasks

  def to_param
    self.name # TODO "#{self.name.gsub(/[^a-z0-9]+/i, '-')}" -- need be stored as shortname
  end
end
