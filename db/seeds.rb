# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create(:title=>"Doctor") if !Role.exists?(["title = ?","Doctor"])
Role.create(:title=>"Receptionist") if !Role.exists?(["title = ?","Receptionist"])
Role.create(:title=>"Customer") if !Role.exists?(["title = ?","Customer"])

#doctor user
params_doc = {"name"=>"venkat", 
					"address"=>"test1234", 
					"city"=>"test", 
					"state"=>"test`", 
					"zip"=>"34343", 
					"degree_from"=>"xyz", 
					"years_practice"=>"33", 
					"email"=>"doc_details@gmail.com", 
					"password"=>"test1234", 
					"password_confirmation"=>"test1234"}
a= User.create(params_doc)
role = Role.find_by_id 1
a.roles << role


#reception user
params_rec = { 
					"email"=>"recep_details1@gmail.com", 
					"password"=>"test1234", 
					"password_confirmation"=>"test1234"}
c= User.create(params_rec)
role = Role.find_by_id 2
c.roles << role


#customer user
params_cust = { 
					"email"=>"curst_details1@gmail.com", 
					"password"=>"test1234", 
					"password_confirmation"=>"test1234"}
b= User.create(params_cust)
role = Role.find_by_id 3
b.roles << role


#pet
params1 = { 
					"name"=>"jimmy", 
					"pet_type"=>"dog", 
					"breed"=>"xyz",
					"age" => 4,
					"weight" => 4,
					"user_id" => 3
				}

b= Pet.create(params1)
