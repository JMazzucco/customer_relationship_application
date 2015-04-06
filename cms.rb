#require_relative Contact
#require_relative Rolodex

#puts "\e[H\e[2J"

class CRM
	def initialize

	end

	def print_menu_options
		puts "1 - Add a new contact"
		puts "2 - Modify an existing contact"
		puts "3 - Delete a contact"
		puts "4 - Display all contacts"
		puts "5 - Display an attribute"
		puts "6 - Exit"
		puts "Enter a number: "
	end

	def main_menu
		print_menu_options
		user_selection = gets.to_i
		call_option(user_selection)
	end

	def call_option(user_selection)
		add_new_contact if user_selection == 1
		modify_existing_contact if user_selection == 2
		delete_existing_contact if user_selection == 3
		display_all_contacts if user_selection == 4
		display_attribute if user_selection ==5
		exit if user_selection == 6
	end

	def add_new_contact
	#user is prompted to give 'first name', 'last name', 'email', and 'notes'
	end

	def modify_existing_contact
	#user is prompted to enter an id for the contact to be modified
		#after id is entered, user if prompted to type "yes" or "no" to confirm selection
		 #if "yes" is entered, the user is prompted to change the 'first name', 'last name', 'email', or 'notes' by number. The id should remain the same.
		 	#When an attribute is entered, the user is prompted to enter a new value. Ex. attr selected is "firstname", new value entered is "Joe"
		 #if "no" is selected, return to main menu
	end

	def delete_existing_contact
		#user is prompted to enter id of contact, then remove contact
	end

	def display_all_contacts
		#show all contacts and their id's

	end

	def display_contact
		#user is prompted to enter an id, then the corresponding contact is shown
	end


	def display_attribute
		#user is prompted to enter an attribute ('first name', 'last name', 'email', or 'notes'), the display that attribute for all contacts (confirm this with teacher)
	end

end

class Contact
	#attr_reader
	#attr_writer
	#attr_accessor

	def initialize(id, first_name, last_name, email, notes)
		@id = id
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
	end
	#all five attributes are mandatory
	#attributes can be modified at any time (i.e attr: write)
	## prompt and accept all contact info
	## allow for individual info to be read or modified
	def print_contact_values
	end

end

class Rolodex
	#store contacts in this class
	#optional: allow ability to search for contacts
	def initialize
		@contacts = []
	end

	def add
	end

	def modify_contact
	end

	def display_all_contacts
	end

	def display_particular_contact
	end

	def display_info_by_attribute
	end

	def delete_contact
	end

end