json.extract! product, :id, :user_id, :title, :description, :min_price, :bid_amount, :current_bid, :ending, :created_at, :updated_at
json.url product_url(product, format: :json)