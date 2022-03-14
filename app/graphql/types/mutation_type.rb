module Types
  class MutationType < Types::BaseObject
    field :add_customer, mutation: Mutations::AddCustomer
    field :delete_customer, mutation: Mutations::DeleteCustomer
    # field :customer, mutation: Mutations::Customer
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
