module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    
    field :customers, [Types::CustomerType], null: false,
      description: "All customer"
    
    field :cari_customer, Types::CustomerType, null: true do
      argument :id, Integer, required: true
    end

    def test_field
      "Hello World!"
    end

    def cari_customer(id:)
      Customer.find_by(id_customers: id)
    end

    def customers
      Customer.all
    end
  end
end
