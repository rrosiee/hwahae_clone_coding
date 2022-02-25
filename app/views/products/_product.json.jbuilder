json.extract! product, :id, :product_name, :price, :sale_price, :ingredient, :product_detail, :point, :delivery_price, :category_name, :brand_name, :category_rank, :created_at, :updated_at
json.url product_url(product, format: :json)
