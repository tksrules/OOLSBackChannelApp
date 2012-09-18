class Category < ActiveRecord::Base
  has_many :posts
  has_many :users, :through => :posts
  has_many :votes, :through => :posts
  attr_accessible :name
  validates :name, :presence => true
end
