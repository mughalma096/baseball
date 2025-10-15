class CreateBillingAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :billing_addresses do |t|
      t.timestamps
    end
  end
end
