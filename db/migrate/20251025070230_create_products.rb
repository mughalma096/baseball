class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :product_type
      t.integer :year
      t.float :value
      t.string :status

      t.timestamps
    end
  end
end
