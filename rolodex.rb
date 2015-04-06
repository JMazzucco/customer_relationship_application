class Rolodex
	attr_reader :contacts
	#store contacts in this class, and organize
	#optional: allow ability to search for contacts
	def initialize
		@contacts = []
		@id = 1000
	end

	def add_contact(contact)
		#read values from Contact class and add them to the array - they should first be in a hash
		contact.id = @id
		puts contact
		puts "contact id" + contact.id.to_s
		@contacts << contact
		@id += 1
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

	def find(contact_id)
		@contacts.select do |contact|
			contact.id == contact_id
		end
	end

end