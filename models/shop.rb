def all_item
    run_sql("SELECT * FROM shop ORDER BY id;")
    end
    
def get_item(id)
    run_sql("SELECT * FROM shop WHERE id = $1", [id])[0]
end

def create_item(name, size, brand, image_url)
    run_sql("INSERT INTO shop(name, size, brand, image_url) VALUES($1, $2, $3, $4)", [name, size, brand, image_url])
end

def update_item(id, name, size, brand, image_url)
    run_sql("UPDATE shop SET name = $2, size = $3, brand = $4, image_url = $5 WHERE id = $1", [id, name, size, brand, image_url])
end

def  delete_item(id)
    run_sql("DELETE FROM shop WHERE id = $1", [id])
end