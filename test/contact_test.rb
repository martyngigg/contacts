require 'test_helper'
require 'contacts/contact'

class ContactTest < MiniTest::Test

  def setup
    @person = Contact.new('Joe', 'Bloggs')
  end

#------------------ Success tests ------------------------
  def test_contact_requires_first_and_last_name
    assert_equal @person.firstname, 'Joe'
    assert_equal @person.lastname, 'Bloggs'
  end

#------------------ Failure tests ------------------------
  def test_empty_firstname_raises_error
    err = assert_raises(ArgumentError) { Contact.new('', 'Bloggs') }
    refute_equal '', err.message
  end

  def test_empty_lastname_raises_error
    err = assert_raises(ArgumentError) { Contact.new('Joe', '') }
    refute_equal '', err.message
  end

end
