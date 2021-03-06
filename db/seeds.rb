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

p = Property.create(description:"great place to live", building_type:"House", price:22210, address:"1121 Spaulding Ave., Chicago, IL", zipcode:60674, year_built:"2017-06-02 05:13:56", status:"For Rent", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:4.5, contact_name:"Nigam", contact_email:"nigam129@ygmail.com", contact_phone:"773-332-4567")
p.state = "Illinois"
p.save

p = Property.create(description:"great place to live", building_type:"House", price:22210, address:"123 6th St.Melbourne", zipcode:32904, year_built:"2017-06-02 05:13:56", status:"For Rent", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:4.5, contact_name:"Rogelio", contact_email:"devcodus@gmail.com", contact_phone:"773-112-4537")
p.state = "Floriday"
p.save

p = Property.create(description:"great place to live", building_type:"House", price:22210, address:"71 Pilgrim Avenue Chevy Chase", zipcode:20815, year_built:"2017-06-02 05:13:56", status:"For Rent", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:1.5, contact_name:"Nigam", contact_email:"nigam129@gmail.com", contact_phone:"773-332-4567")
p.state = "Montana"
p.save

p = Property.create(description:"great place to live", building_type:"House", price:46290, address:"70 Bowman St. South Windsor", zipcode:06074, year_built:"2017-06-02 05:13:56", status:"For Rent", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:1.5, contact_name:"Nigam", contact_email:"nigam129@gmail.com", contact_phone:"773-332-4567")
p.state = "Connecticut"
p.save

p = Property.create(description:"great place to live", building_type:"House", price:12129, address:"4 Goldfield Rd. Honolulu", zipcode:96815, year_built:"2017-06-02 05:13:56", status:"For Rent", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:1.5, contact_name:"Nigam", contact_email:"nigam129@gmail.com", contact_phone:"773-332-4567")
p.state = "Hawaii"
p.save

p = Property.create(description:"great place to live", building_type:"House", price:99922, address:"44 Shirley Ave. West Chicago", zipcode:60185, year_built:"2017-06-02 05:13:56", status:"For Sale", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:1.5, contact_name:"Rogelio", contact_email:"devcodus@gmail.com", contact_phone:"773-112-4537")
p.state = "Illinois"
p.save

p = Property.new(description:"great place to live", building_type:"House", price:99922, address:"44 Shirley Ave. West Chicago", zipcode:60185, year_built:"2017-06-02 05:13:56", status:"For Sale", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:1.5, contact_name:"Rogelio", contact_email:"devcodus@gmail.com", contact_phone:"773-112-4537")
p.state = "Illinois"
p.save

p = Property.create(description:"Zowwie! Have you ever seen a home quite like this one??", building_type:"House", price: 325000, address:"906 Hawthorne St.Floral Park, NY 11001", zipcode:83838, year_built:"1966-06-02 05:13:56", status:"For Sale", garage:true, no_bed:2, no_bath:2.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "New York"
p.save

p = Property.create(description:"This is heaven, right?", building_type:"House", price: 299000, address: "57 Valley Ave. Sugar Land",  zipcode:83838, year_built:"1966-06-02 05:13:56", status:"For Sale", garage:true, no_bed:4, no_bath:3.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Texas"
p.save

p = Property.create(description:"The right house. The right price.", building_type:"House", price: 399000,address: "179 Gartner St. Desoto", zipcode:83838,  year_built:"1956-06-02 05:13:56", status:"For Sale", garage:true, no_bed:2, no_bath:1.5, parking:"Garage", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Texas"
p.save

p = Property.create(description:"Your castle awaits!", building_type:"House", price: 295000,address: "9819 Lower River Ave. Ottawa", zipcode:83838, year_built:"1978-06-02 05:13:56", status:"For Sale", garage:true, no_bed:4, no_bath:1.5, parking:"Street", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Illinois"
p.save

p = Property.create(description:"A fixer upper!", building_type:"Condo", price: 487000,address: "9295 Cross St. Ankeny", zipcode:83838, year_built:"1985-06-02 05:13:56", status:"For Sale", garage:false, no_bed:2, no_bath:1.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Iowa"
p.save

p = Property.create(description:"Great neighbors!", building_type:"House", price: 387000,address: "8209 Poplar St. Merrick", zipcode:83838, year_built:"1995-06-02 05:13:56", status:"For Sale", garage:true, no_bed:3, no_bath:2.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "New York"
p.save

p = Property.create(description:"Thoughts of retirement!", building_type:"Condo", price: 455000,address: "9636 Meadow St. Suite 13 Conyers", zipcode:83838, year_built:"1999-06-02 05:13:56", status:"For Sale", garage:false, no_bed:3, no_bath:2.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Georgia"
p.save

p = Property.create(description:"Dreams of .....!", building_type:"Townhome", price: 445000,address: "7966 Southampton Lane Roselle", zipcode:83838, year_built:"2003-06-02 05:13:56", status:"For Sale", garage:true, no_bed:3, no_bath:2.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Illinois"
p.save

p = Property.create(description:"Make all of your dreams come true!", building_type:"Cond", price: 535000,address: "18 South Rose St. Calhoun, GA 30701",zipcode:83838,  year_built:"2007-06-02 05:13:56", status:"For Sale", garage:true, no_bed:3, no_bath:2.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Georgia"
p.save

p = Property.create(description:"Holy Cow!", building_type:"Home", price: 635000,address: "8910 Clark Street Park Forest,", zipcode:83838, year_built:"1992-06-02 05:13:56", status:"For Sale", garage:true, no_bed:4, no_bath:2.5, parking:"Street Parking Available", tax:2.5, contact_name:"Rico", contact_email:"e_dubs@gmail.com", contact_phone:"773-112-4537")
p.state = "Illinois"
p.save

Agent.create(name:"Bob Murphy",email:"murph@aol.com", phone:"663-373-3039")
Agent.create(name:"Bill Sully",email:"sully@aol.com", phone:"663-373-3039")
Agent.create(name:"Jane Anne",email:"jane@aol.com", phone:"663-373-3039")
Agent.create(name:"Dee Ling",email:"ling@aol.com", phone:"663-373-3039")
Agent.create(name:"Ann Susan",email:"susan@aol.com", phone:"663-333-3039")
Agent.create(name:"Creeper Cholofit",email:"creeper@aol.com", phone:"999-333-3039")
