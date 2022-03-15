module Mutations
  class UpdateCustomer < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    argument :name, String, required: false
    argument :no_hp, String, required: true
    argument :id, String, required: true

    type Types::CustomerType

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    def resolve(id:, no_hp:, name:)
      customer = Customer.find_by(id_customer: Integer(id))
      customer.nama_customer = name
      customer.no_hp = no_hp
      customer.save
    end
  end
end
