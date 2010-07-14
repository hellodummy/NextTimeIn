class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :confirmable, :lockable, :timeoutable and :activatable
  devise :registerable, :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  has_many :locations, :dependent => :nullify
  has_many :tasks, :through => :locations

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password
  
end
