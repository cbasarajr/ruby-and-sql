# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all #delete all the rows in companies
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Salesperson.all.count} companies"

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new

puts new_salesperson.inspect

new_salesperson["name"] = "John Smith"
new_salesperson["title"] = "Manager"
new_salesperson.save 

puts new_salesperson.inspect

salesperson2 = Salesperson.new
salesperson2["name"] = "Karen Smith"
salesperson2["title"] = "San Francisco"
salesperson2.save

puts "There are #{Company.all.count} companies"

# 3. write code to display how many salespeople rows are in the database

all_companies = Company.all
puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
puts cali_companies.inspect

puts "CA companies: #{cali_companies.count}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
