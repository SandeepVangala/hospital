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
params = {"name"=>"venkat", 
					"address"=>"test1234", 
					"city"=>"test", 
					"state"=>"test`", 
					"zip"=>"34343", 
					"degree_from"=>"xyz", 
					"years_practice"=>"33", 
					"email"=>"doc_details@gmail.com", 
					"password"=>"test1234", 
					"password_confirmation"=>"test1234"}
a= User.create(params)
role = Role.find_by_id 1
a.roles << role


#reception user
params = { 
					"email"=>"recep_details1@gmail.com", 
					"password"=>"test1234", 
					"password_confirmation"=>"test1234"}
c= User.create(params)
role = Role.find_by_id 2
c.roles << role


#customer user
params = { 
					"email"=>"curst_details1@gmail.com", 
					"password"=>"test1234", 
					"password_confirmation"=>"test1234"}
b= User.create(params)
role = Role.find_by_id 3
b.roles << role


