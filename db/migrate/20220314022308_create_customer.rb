class CreateCustomer < ActiveRecord::Migration[7.0]
  def change
    create_table :customers, id: false do |t|
      t.integer :id_customer, primary_key: true
      t.integer :id_product 
      t.integer :id_status
      t.string :nama_customer
      t.string :no_hp

      t.timestamps
    end
  end
end
