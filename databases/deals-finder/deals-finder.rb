### DEALS FINDER ###

# REQUIRE GEMS

require 'sqlite3'

# CREATE SQLite3 DATABASE

db = SQLite3::Database.new("deals-finder.db")

create_shoppers_table = <<-SQL
  CREATE TABLE IF NOT EXISTS shoppers(
    ID INTEGER PRIMARY KEY,
    First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Email_Address VARCHAR(255),
	DF_Password VARCHAR(255)
  )
SQL

create_business_owners_table = <<-SQL
  CREATE TABLE IF NOT EXISTS shoppers(
    ID INTEGER PRIMARY KEY,
    First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Email_Address VARCHAR(255),
	Business_Name VARCHAR(255),
	Business_Phone VARCHAR(255),
	Business_FEIN VARCHAR(255),
	DF_Password VARCHAR(255)
  )
SQL

db.execute(create_shoppers_table)
db.execute(create_business_owners_table)

# DEALS FINDER CLASS

class Deals_Finder

	def initialize
	end

	def create_shopper(db, first_name, last_name, email, df_password)
		db.execute("INSERT INTO shoppers (First_Name, Last_Name, Email_Address, DF_Password) VALUES (?, ?, ?, ?)", [first_name, last_name, email, df_password])
	end

	def create_business_owner(db, first_name, last_name, email, biz_name, biz_phone, biz_fein, df_password)
		db.execute("INSERT INTO business_owners (First_Name, Last_Name, Email_Address, Business_Name, Business_Phone, Business_FEIN, DF_Password) VALUES (?, ?, ?, ?, ?, ?, ?)", [first_name, last_name, email, biz_name, biz_phone, biz_fein, df_password])
	end
end

# USER INTERFACE

puts "Welcome to Deals Finder! Are you a new user?"
puts "Kindly choose one: yes or no"
new_user = gets.chomp.downcase

if new_user == "yes"
	puts "Please tell us a little more about yourself."
	puts "Kindly choose one: business owner or shopper"
	new_user_type = gets.chomp.downcase
	if new_user_type == "shopper"
		puts "What's your first name?"
		shopper_first_name = gets.chomp
		puts "What's your last name?"
		shopper_last_name = gets.chomp
		puts "What's your email address?"
		shopper_email = gets.chomp
		puts "Please create a Deals Finder password."
		shopper_df_password = gets.chomp
	else new_user_type == 'business owner'
		puts "What's your first name?"
		biz_owner_first_name = gets.chomp
		puts "What's your last name?"
		biz_owner_last_name = gets.chomp
		puts "What's your email address?"
		biz_owner_email = gets.chomp
		puts "What's the name of your business?"
		business_name = gets.chomp
		puts "What's the address of your business?"
		business_address = gets.chomp
		puts "What's the phone number of your business?"
		business_phone = gets.chomp
		puts "What's your business's Federal Employer Identification Number (FEIN or EIN)?"
		business_fein = gets.chomp
		puts "Please create a Deals Finder password."
		biz_owner_df_password = gets.chomp
	end
else new_user == "no"
	puts "What kind of user are you?"
	puts "Kindly choose one: business owner or shopper"
	returning_user_type = gets.chomp.downcase
	puts "What's your email address?"
	returning_user_email = gets.chomp
	puts "Please enter your Deals Finder password."
	returning_user_df_password = gets.chomp
	if returning_user_type == "shopper"
		puts "What city would you like to search?"
		city_search = gets.chomp
	else returning_user_type == "business owner"
		puts "Please enter an item name."
		deal_item = gets.chomp
		puts "What city is this item sold in?"
		deal_city = gets.chomp
		puts "What's the price of the item?"
		item_price = gets.chomp
	end
end