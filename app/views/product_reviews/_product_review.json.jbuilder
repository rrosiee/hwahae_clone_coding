json.extract! product_review, :id, :review_comment, :product_id, :user_id, :created_at, :updated_at
json.url product_review_url(product_review, format: :json)
