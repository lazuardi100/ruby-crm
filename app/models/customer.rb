class Customer < ApplicationRecord
    has_one :products, :class_name => 'Product', :foreign_key => 'id_product', :primary_key => 'id_product'
end
