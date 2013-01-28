# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }) { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rake::Task['load_states:all'].invoke

# Load the Secretary of State mailing address
Guidelines.find_by_state("XX").update_attributes({:mail_to_address_4=>"Anytown, USA 01234", :mail_to_address_1=>"Division of Elections", :mail_to_address_2=>"State of XX", :mail_to_address_3=>"PO Box 1234"})

PoliticalParty.create(:name => "Democratic")
PoliticalParty.create(:name => "Libertarian")
PoliticalParty.create(:name => "Republican")
PoliticalParty.create(:name =>  "Unaffiliated")
PoliticalParty.create(:name => "Other")
puts "Added political parties"

Ethnicity.create(:name => "American Indian or Alaskan Native")
Ethnicity.create(:name => "Asian or Pacific Islander")
Ethnicity.create(:name => "Black, not of Hispanic Origin")
Ethnicity.create(:name => "Hispanic")
Ethnicity.create({:name => "Multi-racial"})
Ethnicity.create(:name => "White, not of Hispanic Origin")
Ethnicity.create(:name => "Other")
puts "Added ethnicity fields"

Admin.create(:email => "admin@example.com", :password => "p@ssw0rd", :password_confirmation => "p@ssw0rd")
puts "Created an initial user. Be sure to change admin user password!"
