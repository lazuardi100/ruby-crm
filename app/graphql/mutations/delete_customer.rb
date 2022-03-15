module Mutations
  class DeleteCustomer < BaseMutation
    # TODO: define return fields
    field :id, Integer, null: true

    # TODO: define arguments
    argument :id, String, required: true

    



    # TODO: define resolve method
    def resolve(id:)
      Customer.destroy_by(id_customer: Integer(id))
      {
        id: id
      }
    end
  end
end
