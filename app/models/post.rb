class Post < ActiveRecord::Base
  attr_accessible :category, :owner, :parentpostid, :voteid,  :content, :created_at, :updated_at
  has_many :category
  belongs_to :user
  has_many :votes
end
