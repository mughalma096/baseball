class CreateShippingAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :shipping_addresses do |t|
      t.timestamps
    end
  end
end
