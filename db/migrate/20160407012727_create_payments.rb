class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :invoice, index: true, foreign_key: true
      t.string :auth_code

      t.timestamps null: false
    end
  end
end
