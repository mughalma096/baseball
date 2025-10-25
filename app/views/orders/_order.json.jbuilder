json.extract! order, :id, :user_id, :payment_method_id, :status, :amount, :discount, :total_amount, :shipment_id, :created_at, :updated_at
json.url order_url(order, format: :json)
