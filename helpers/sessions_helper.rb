def logged_in?
    if session['user']
        return true
    else
        return false
    end
end

def current_user
    if logged_in?
        user = session['user']
        find_user_by_id(user['id'])
    else
        nil
    end
end

def is_admin?
    if logged_in?
        user = session['user']
        if user['role'] == 'ADMIN'
            return true
        else
            return false
        end
    else
        return false
    end
end