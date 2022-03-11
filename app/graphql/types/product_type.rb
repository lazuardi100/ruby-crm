# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id_product, Integer, null: false
    field :nama_product, String
    field :harga, Integer
  end
end
