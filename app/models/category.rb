class Category < ActiveRecord::Base
  attr_accessible :categoryname
  has_many :posts, has_many :users, has_many :votes
end
