class Contact
#store contact information
attr_accessor :id, :first_name, :last_name, :email, :notes

	def initialize(first_name, last_name, email, notes)
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

	def to_s
		print "first_name: #{@first_name}"
		print "last_name: #{@last_name}"
		print "email: #{@email}"
		print "notes: #{@notes}"
	end

end
