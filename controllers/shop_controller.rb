get '/' do
    erb :'shop/index'
end

get '/shop/new' do
    shop_items = all_item()
    erb :'shop/new', locals: {
    shop_items: shop_items
    }
end

post '/shop' do
    name = params["name"]
    size = params["size"]
    brand = params["brand"]
    image_url = params["image_url"]
  
    create_item(name, size, brand, image_url)
    redirect '/'
end

get '/shop/:id/edit' do
    id = params["id"]
  
    shop = get_item(id)
    erb :'shop/edit', locals: {
      shop: shop
    }
end
  
put '/shop/new:id' do
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