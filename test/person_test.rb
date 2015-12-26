require 'test_helper'
require 'contacts/person'

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new('Joe', 'Bloggs')
  end

#------------------ Success tests ------------------------
  def test_person_requires_first_and_last_name
    assert_equal @person.firstname, 'Joe'
    assert_equal @person.lastname, 'Bloggs'
  end

#------------------ Failure tests ------------------------
  def test_empty_firstname_raises_error
    assert_raises ArgumentError do
      Person.new('', 'Bloggs')
    end
  end

  def test_empty_lastname_raises_error
    assert_raises ArgumentError do
      Person.new('Joe', '')
    end
  end

end
