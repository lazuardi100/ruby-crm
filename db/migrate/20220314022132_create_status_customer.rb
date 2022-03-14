class CreateStatusCustomer < ActiveRecord::Migration[7.0]
  def change
    create_table :status_customers, id: false do |t|
      t.integer :id_status, primary_key: true
      t.string :status

      t.timestamps
    end
  end
end
