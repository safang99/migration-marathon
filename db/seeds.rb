# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

Book.create!(title: 'Catch-22', author: 'Joseph Heller', rating: 100, favorite: true)
Book.create(title: 'Great Book', rating: 0)
Book.create!(title: 'Best Book', author: 'Joseph Heller', favorite: true)

Checkout.create(name: "Fang", book: Book.first)
Checkout.create(name: "Ethan", book: Book.second)
Checkout.create(name: "Jason", book: Book.first)

Category.create(name: "Sci - Fiction")
Category.create(name: "Non - Fiction")
Category.create(name: "Fantasy")