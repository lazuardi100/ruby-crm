module Mutations
  class SearchCustomer < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    argument :id, Integer, required: true

    field :id_customers, Integer, null: false
    field :id_product, Integer
    field :id_status, Integer
    field :nama_customer, String
    field :no_hp, String

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    def resolve(id:)
      result = Customer.find_by(id_customers: id)
      {success: true, customers: result, errors: []}

      rescue ActiveRecord::RecordNotFound
        return { success: false, customers: nil, errors: ['record-not-found'] }
      
    end
    
  end
end
