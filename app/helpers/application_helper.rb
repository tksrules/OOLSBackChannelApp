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

end
