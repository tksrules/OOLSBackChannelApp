module ApplicationHelper

  def admin?
    if current_user.permission_level == "admin" || current_user.id == "admin"
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
    if (admin? || owner?(id))
      return true
    else
      return false
    end
  end


  def get_all_comments_for_post(postid)
    return  Post.where( :id => post.parent_id).sort_by_column_decreasing(:updated_at)
  end

  def get_user(userid)
    @result = User.select(:username).where(:id => userid)
     @result.each do |res|
        return res.username
      end
  end



end
