class User < ActiveRecord::Base
  attr_accessible :password, :role, :unityid
  has_many :posts
end