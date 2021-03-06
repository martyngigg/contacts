# Holds the details of a single person
# The minimum expected details for a person
# are:
#  - first name
#  - last name
class Person
  attr_reader :firstname, :lastname

  def initialize(firstname, lastname)
    fail ArgumentError,\
         'Both first & last names are required: '\
         "firstname=#{firstname} lastname=#{lastname}"\
         if firstname.length == 0 || lastname.length == 0
    @firstname = firstname
    @lastname = lastname
  end
end
