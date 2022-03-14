# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first) 

StatusCustomer.create([
    {status: "Calon Customer"},
    {status: "Pending"},
    {status: "Approve"},
    {status: "Reject"}
    ])
# User.create([
#     {email: "admin@mail.com", encrypted_password: '$2a$12$.jXpZRxsiWLgCH.tMGwPgeFTWIWc1sLGGjCy.r.k6fCs/spUPq.b6', role: 1},
#     {email: "manager@mail.com", encrypted_password: '$2a$12$HNU.v0AkqNIyfwqNAd/RoOdYOo6L1mHDGaRS/18ymx3cvY0oK5Yi.', role: 2}
# ])
