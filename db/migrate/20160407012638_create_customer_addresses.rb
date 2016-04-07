class CreateCustomerAddresses < ActiveRecord::Migration
  def change
    create_table :customer_addresses do |t|
      t.references :address, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
