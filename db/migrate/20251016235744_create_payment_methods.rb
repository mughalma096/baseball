class CreatePaymentMethods < ActiveRecord::Migration[8.0]
  def change
    create_table :payment_methods do |t|
      t.references :user, null: false, index: true
      t.string :provider
      t.string :card_brand
      t.string :card_last4
      t.integer :exp_month
      t.integer :exp_year
      t.string :provider_id

      t.timestamps
    end
  end
end
