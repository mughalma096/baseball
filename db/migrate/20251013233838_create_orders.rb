class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0, null: false, index: true
      t.decimal :total_amount
      t.references :user, null: false, index: true
      t.string :payment_method_id
      t.string :shipment_id

      t.timestamps
    end
  end
end
