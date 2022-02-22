def logged_in?
    if session['user_id']
        return true
    else
        return false
    end
end

def current_user
    if logged_in?
        find_user_by_id(session['user_id'])
    else
        nil
    end
end