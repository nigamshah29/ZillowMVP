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

  p = Property.new(description:"great place to live", building_type:"House", price:99922, address:"44 Shirley Ave. West Chicago, IL ", zipcode:60185, year_built:"2017-06-02 05:13:56", status:"For Sale", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:1.5, contact_name:"Rogelio", contact_email:"devcodus@gmail.com", contact_phone:"773-112-4537")
    p.state = "Illinois"
    p.city = "Chicago"
    p.save

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
