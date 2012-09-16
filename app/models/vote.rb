class Vote < ActiveRecord::Base
  attr_accessible :postid, :userid, :votedate
  belongs_to :post
end
