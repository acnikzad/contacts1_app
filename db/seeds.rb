# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  contact = Contact.create(first_name: "Mike", last_name: "Williams", email: "aw@gmail.com", phone_number: "4213287654")

  contact.save

  contact = Contact.create(first_name: "Steve", last_name: "Powers", email: "sp@gmail.com", phone_number: "4153287894")

  contact.save

  contact = Contact.create(first_name: "Ashley", last_name: "Graft", email: "ag@gmail.com", phone_number: "4153232654")

  contact.save

  contact = Contact.create(first_name: "Sol", last_name: "Airhead", email: "sa@gmail.com", phone_number: "4153287764")

  contact.save

  contact = Contact.create(first_name: "Amanda", last_name: "Booger", email: "ab@gmail.com", phone_number: "4153687654")

  contact.save