# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

  User.create(first_name:"Nigam", last_name:"Shah", email:"nigam129@gmail.com", password:"abcd", password_confirmation:"abcd")
  User.create(first_name:"Rogelio", last_name:"Rincon", email:"devcodus@gmail.com", password:"abcd", password_confirmation:"abcd")
  User.create(first_name:"Mark", last_name:"Lehn", email:"mark@gmail.com", password:"abcd", password_confirmation:"abcd")
  User.create(first_name:"David", last_name:"Pina", email:"pina@gmail.com", password:"abcd", password_confirmation:"abcd")

  Property.create(address:"7415 N. Fairfield", city:"Chicago", state:"Illinois", zipcode:60645, building_type:"House", year_built:1992-02-02, status:"For Sale", contact_name:"Nigam Shah", contact_email:"nigam129@gmail.com")
  Property.create(address:"909 W. Logan", city:"Los Angeles", state:"California", zipcode:90034, building_type:"Condo", year_built:1993-22-10, status:"For Rent", contact_name:"Rogelio", contact_email:"devcodus@gmail.com")

  Favorite.create(property_id:1,user_id:1)
  Favorite.create(property_id:2,user_id:1)
  Favorite.create(property_id:3,user_id:1)
  Favorite.create(property_id:4,user_id:1)
  Favorite.create(property_id:1,user_id:2)
  Favorite.create(property_id:2,user_id:2)
  Favorite.create(property_id:3,user_id:2)
  Favorite.create(property_id:1,user_id:3)
  Favorite.create(property_id:1,user_id:4)
  Favorite.create(property_id:2,user_id:3)
  Favorite.create(property_id:4,user_id:3)
  Favorite.create(property_id:4,user_id:4)
  Favorite.create(property_id:1,user_id:5)
  Favorite.create(property_id:2,user_id:5)
  Favorite.create(property_id:3,user_id:5)
  Favorite.create(property_id:4,user_id:5)
