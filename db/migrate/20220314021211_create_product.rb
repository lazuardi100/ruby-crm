class CreateProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: false do |t|
      t.integer :id_product, primary_key: true
      t.string :nama_product
      t.integer :harga

      t.timestamps
    end
  end
end
