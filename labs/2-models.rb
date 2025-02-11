# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
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

# 2. insert 1-2 rows in salespeople table.
new_person = Salesperson.new
new_person["first_name"] ="John"
new_person["last_name"] = "Block"

new_person.save #need this to actually save it 

#person 2
new_person = Salesperson.new
new_person["first_name"] ="Brian"
new_person["last_name"] = "Eng"

new_person.save #need this to actually save it 

# 3. write code to display how many salespeople rows are in the database
salesppl = Salesperson.all.count
puts "There are #{salesppl} salespeople" 

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

Ben = Salesperson.find_by({"first_name"=> "John"})

Ben["first_name"] = "Ben"
Ben.save
# puts Ben.inspect

# # CHALLENGE:
# # 5. write code to display each salesperson's full name
p1 = Salesperson.find_by({"first_name" => "Ben"})
p2 = Salesperson.find_by({"first_name" => "Brian"})
puts p1["first_name"] +" " + p1["last_name"]
puts p2["first_name"] +" " + p2["last_name"]

puts nil
#using a loop for more than one person 

people = Salesperson.all
for ppl in people
first_name = ppl["first_name"]
last_name = ppl["last_name"]
name = "#{first_name} #{last_name}"
puts name
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
