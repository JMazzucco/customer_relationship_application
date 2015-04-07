require_relative "contact"
require_relative "rolodex"

#puts "\e[H\e[2J"
class CRM
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
		contact = Contact.new(first_name, last_name, email, note)
		@rolodex.add_contact(contact)
	end

	def modify_existing_contact
		 puts "Enter Contact ID: "
		 id_selection = gets.chomp.to_i
		 if id_selection >= 1000
		 	puts "Please confirm selection: #{id_selection} (y/n)"
		 	confirmation = gets.chomp.downcase
		 		if confirmation == "y"
		 				puts "Select an attribute to modify"
		 				puts "1 - first name"
		 				puts "2 - last name"
		 				puts "3 - email"
		 				puts "4 - notes"
		 				attribute_selection = gets.chomp.to_i

		 				puts "please type new first name" if attribute_selection == 1
		 				puts "please type new last name" if attribute_selection == 2
		 				puts "please type new email" if attribute_selection == 3
		 				puts "please type new notes" if attribute_selection == 4
		 				new_attribute = gets.chomp

		 				@rolodex.modify_contact(id_selection, new_attribute, attribute_selection)
		 		elsif id_selection == "n"
		 			modify_existing_contact
		 		end
		 	else
		 		modify_existing_contact
		 end
	end

	def display_contact
		puts "Enter Contact ID: "
		id_selection = gets.chomp.to_i
		@rolodex.display_particular_contact(id_selection)
	end

	def delete_existing_contact
		puts "Enter Contact ID: "
		id_selection = gets.chomp.to_i
		@rolodex.delete_contact(id_selection)
	end

	def display_all_contacts
		@rolodex.display_all_contacts
	end

	def display_attribute
		puts "Select an attribute to display"
		puts "1 - first name"
		puts "2 - last name"
		puts "3 - email"
		puts "4 - notes"
		attribute_selection = gets.chomp.to_i
		@rolodex.display_info_by_attribute(attribute_selection)
	end
end

CRM.run