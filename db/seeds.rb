# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
institution_types = ['Universidade', 'Escola', 'Creche']

1.times do
  Institution.create({
    name: Faker::Name.name,
    cnpj: 57222068000132,
    kind: institution_types.sample
  })

  Student.create({
    name: "Fred",
		cpf: "11111111111112",
		gender: "M",
		payment_way: "Boleto",
		birthday: "2000-03-21"
  })
end