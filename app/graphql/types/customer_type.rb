# frozen_string_literal: true

module Types
  class CustomerType < Types::BaseObject
    field :id_customers, Integer, null: false
    field :id_product, Integer
    field :id_status, Integer
    field :nama_customer, String
    field :no_hp, String
    field :products, Types::ProductType, null: true
  end
end
