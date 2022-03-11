module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    object_class Types::BaseObject

    field :search_customer, mutation: Mutations::SearchCustomer
    # field :delete_customer, mutation: Mutations::DeleteCustomer
  end
end
