class Product < ApplicationRecord
    has_one :customer, class_name: 'Customer', foreign_key: 'id_product', primary_key: 'id_product'
end
