module Mutations
  class AddCustomer < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    argument :name, String, required: true
    argument :no_hp, String, required: true

    field :customer, Types::CustomerType, null: true

    # type Types::CustomerType

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(name:, no_hp:)
      customer = Customer.new(nama_customer: name, no_hp: no_hp)

      customer.save

      # Types::CustomerType
    end
  end
end
