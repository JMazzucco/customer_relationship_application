require_relative "contact"
require_relative "rolodex"

#puts "\e[H\e[2J"
class CRM
	#class method - runs and instance on the class. It does not create a new object
	def initialize
		@rolodex = Rolodex.new
	end

	def self.run
		my_crm = CRM.new
		my_crm.main_menu
	end

	def print_menu_options
		puts "1 - Add a new contact"
		puts "2 - Modify an existing contact"
		puts "3 - Delete a contact"
		puts "4 - Display a contact"
		puts "5 - Display all contacts"
		puts "6 - Display an attribute"
		puts "7 - Exit"
		puts "Enter a number: "
	end

	def main_menu
		while true
			print_menu_options
			user_selection = gets.to_i
			call_option(user_selection)
		end
	end

	def call_option(user_selection)
		add_new_contact if user_selection == 1
		modify_existing_contact if user_selection == 2
		delete_existing_contact if user_selection == 3
		display_contact if user_selection == 4
		display_all_contacts if user_selection == 5
		display_attribute if user_selection == 6
		exit if user_selection == 7
	end

	def add_new_contact
		puts "Enter First Name: "
		first_name = gets.chomp
		puts "Enter Last Name: "
		last_name = gets.chomp
		puts "Enter Email Address"
		email = gets.chomp
		print "Enter a Note: "
		note = gets.chomp
		#get new id number from the rolodex?
		contact = Contact.new(first_name, last_name, email, note)
		@rolodex.add_contact(contact)
	end

	def modify_existing_contact
		#user is prompted to enter an id for the contact to be modified
		#after id is entered, user if prompted to type "yes" or "no" to confirm selection
		 #if "yes" is entered, the user is prompted to change the 'first name', 'last name', 'email', or 'notes' by number. The id should remain the same.
		 	#When an attribute is entered, the user is prompted to enter a new value. Ex. attr selected is "firstname", new value entered is "Joe"
		 #if "no" is selected, return to main menu
		 puts "Enter Contact ID: "
		 id = gets.chomp
	end

	def delete_existing_contact
		#user is prompted to enter id of contact, then remove contact
		puts "Enter Contact ID: "
		id = gets.chomp
	end

	def display_all_contacts
		#show all contacts and their id's
	end

	def display_contact
		#user is prompted to enter an id, then the corresponding contact is shown
		puts "Enter Contact ID: "
		contact_id = gets.chomp.to_i
		puts @rolodex.find(contact_id)
		#contact = @rolodex.find(contact_id)
	end

	def display_attribute
		#user is prompted to enter an attribute ('first name', 'last name', 'email', or 'notes'), the display that attribute for all contacts (confirm this with teacher)
		puts "Enter attribute: "
		attribute = gets.chomp
	end
end

CRM.run