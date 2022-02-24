get '/login' do
    erb :'sessions/new'
end

post '/sessions' do
    email = params["email"]
    password = params["password"]

    user = find_user_by_email(email)

    if user && BCrypt::Password.new(user['password_digest']) == params['password']
        session['user'] = user
    
        redirect '/'
    end
end

delete '/sessions' do
    session['user'] = nil

    redirect '/'
end

get '/logout' do
    session['user'] = nil

    redirect '/'
end