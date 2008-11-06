class User < ActiveRecord::Base
  validates_presence_of :login, :email, :password
  validates_uniqueness_of :login

  has_many :videos
end
