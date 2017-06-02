# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name:"Nigam", last_name:"Shah", email:"nigam129@gmail.com", password:"abcd", password_confirmation:"abcd")
User.create(first_name:"Rogelio", last_name:"Rincon", email:"devcodus@gmail.com", password:"abcd", password_confirmation:"abcd")
User.create(first_name:"Mark", last_name:"Lehn", email:"mark@gmail.com", password:"abcd", password_confirmation:"abcd")
User.create(first_name:"David", last_name:"Pina", email:"pina@gmail.com", password:"abcd", password_confirmation:"abcd")

Property.create(address:"7415 N. Fairfield", city:"Chicago", state:"Illinois", zipcode:60645, building_type:"House", description:"nice property, check out now", status:"For Sale", no_bed:3, no_bath:2.5, garage:true, tax:2.3, contact_name:"Nigam")

Property.create(address:"909 W. Logan", city:"Los Angeles", state:"California", zipcode:90034, building_type:"Condo", description:"nice property, check out now", status:"For Sale", no_bed:4, no_bath:3.5, garage:true, tax:1.3, contact_name:"Rogelio")
