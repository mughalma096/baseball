class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :payment_method, null: false, foreign_key: true
      t.string :status
      t.decimal :amount
      t.float :discount
      t.decimal :total_amount
      t.string :shipment_id

      t.timestamps
    end
  end
end
