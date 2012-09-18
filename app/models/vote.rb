class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :user_id, :post_id
  validates :user_id, :presence => true
  validates :post_id, :presence => true

  def user_voted_for_post? user_id, post_id
    Vote.count(:conditions => { :post_id => post_id, :user_id => user_id })
  end

  def get_post_count post_id
    Vote.count(:conditions => { :post_id => post_id })
  end
end
