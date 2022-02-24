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
    redirect '/shop/new'
end

get '/edit_shop/:id' do
    shop_id = params["id"]
    user = session["user"]
    user_id = user["id"]
    shop_item = get_item(shop_id)
    erb :'shop/edit', locals: {
        shop_id: shop_id,
        shop_item: shop_item
    }
end
  
put '/shop/new/:id' do
    id = params["id"]
    name = params["name"]
    size = params["size"]
    brand = params["brand"]
    image_url = params["image_url"]
  
    update_item(id, name, size, brand, image_url)
    redirect '/shop/new'
end
  
delete '/shop/new/:id' do
    id = params['id']
  
    delete_item(id)
    redirect '/shop/new'
end

get '/about' do
    erb :'shop/about'
end

get '/blog' do
    erb :'shop/blog'
end

get '/shop/buy/' do
    erb :'shop/buy'
  end