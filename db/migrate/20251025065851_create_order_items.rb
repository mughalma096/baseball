class CreateOrderItems < ActiveRecord::Migration[8.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, index: true
      t.references :product, null: false, index: true
      t.integer :quantity, null: false, default: 1
      t.decimal :price, null: false, precision: 10
      t.float :discount, default: 0.0
      t.decimal :total_price, null: false, precision: 10
      t.timestamps
    end
  end
end
