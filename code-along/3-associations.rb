# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company
puts "Companies: #{Company.all.count}"
puts "Contacts: #{Contact.all.count}"

apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

cook = Contact.new
cook["first_name"] = "Tim"
cook["last_name"] = "Cook"
cook["email"] = "tim@apple.com"
cook["company_id"] = apple["id"]
cook.save

amazon = Company.find_by({"name" => "Amazon"})

bezos = Contact.new
bezos["first_name"] = "Jeff"

puts "Contacts: #{Contact.all.count}"

# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"company_id" => apple["id"]})
puts "Apple Contacts: #{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?

for zebra in apple_contacts    
    first_name = zebra["first_name"]
    last_name = zebra["last_name"]
    puts "#{first_name} #{last_name}"
    