require 'contacts/person'

# Models a single contact, extending a Person to attach
# contact information
class Contact < Person
  def initialize(firstname, lastname)
    super(firstname, lastname)
  end
end
