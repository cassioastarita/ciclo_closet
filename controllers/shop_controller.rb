get '/' do
    erb :'shop/index'
end

get '/shop/new' do
    shop_items = all_item()
    erb :'shop/new', locals: {
    shop_items: shop_items
    }
end

post '/shop/new' do
    name = params["name"]
    size = params["size"]
    brand = params["brand"]
    image_url = params["image_url"]
    user_id = session["user_id"]
  
    create_item(name, size, brand, image_url, user_id)
    redirect '/'
end

get '/edit_shop/:id' do
    shop_id = params["id"]
    user_id = session["user_id"]
    user_shop_items = user_shop_items(user_id)
    erb :'shop/edit', locals: {
        shop_items: user_shop_items,
        shop_id: shop_id
    }
end
  
put '/shop/new/:id' do
    id = params["id"]
    name = params["name"]
    size = params["size"]
    brand = params["brand"]
    image_url = params["image_url"]
  
    update_item(id, name, size, brand, image_url)
    redirect '/'
end
  
delete '/shop/new/:id' do
    id = params['id']
  
    delete_item(id)
    redirect '/'
end

get '/about' do
    erb :'shop/about'
end

get '/blog' do
    erb :'shop/blog'
end