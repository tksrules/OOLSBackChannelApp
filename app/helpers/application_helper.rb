require 'date'

module ApplicationHelper

  def admin?(id)

    if  User.select(:role).where(:id => current_user.id) == "admin"
      return true
    else
      return false
    end
  end

  def owner?(id)
    if current_user.id == id
      return true
    else
      return false
    end
  end

  def admin_or_owner?(id)
    if (admin?(id) || owner?(id))
      return true
    else
      return false
    end
  end


  def get_all_comments_for_post(currentpostid)
    @result = Post.where(:parent_id => currentpostid)
  end

  def get_user(userid)
    @result = User.select(:username).where(:id => userid)
     @result.each do |res|
        return res.username
      end
  end


  def get_votes_for_post(postid)
     return Vote.select(:user_id).where(:post_id => postid).count
  end

  def get_datetime_string(t)

    return t.strftime('%b %d, %Y %I:%M %p')
  end

end
