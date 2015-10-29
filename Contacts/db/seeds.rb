# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Contact.create([
    {first_name: "John", last_name: "Doe", date_of_birth: 21.years.ago},
    {first_name: "Jane", last_name: "Doe", date_of_birth: 20.years.ago}
  ])
