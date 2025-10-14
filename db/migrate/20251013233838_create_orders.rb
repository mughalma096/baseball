class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integar :status, default: 0, null: false
      t.decimal :total_amount
      t.references :payment_method
      t.references :user, null: false
      t.string :stripe_payment_id
      t.string :shipment_id

      t.timestamps
    end
  end
end
