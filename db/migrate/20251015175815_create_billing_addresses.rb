class CreateBillingAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :billing_addresses do |t|
      t.references :order, null: false, index: true
      t.string :name
      t.string :address
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
