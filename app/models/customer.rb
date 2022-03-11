class Customer < ApplicationRecord
    belongs_to :products, :class_name => 'Product', :foreign_key => 'id_product', :primary_key => 'id_product', optional: true
end
