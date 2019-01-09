require 'json'
require 'httparty'

class SingleBookService
  include HTTParty

  base_uri 'http://localhost:9292'

  attr_reader :book_title, :author, :age, :gender

  def initialize
    @book_title = "The Hate U Give"
    @author = 'Angie Thomas'
    @age = 34.0
    @gender = 'Female'

  end

  def get_single_book
    @single_book_data = JSON.parse(self.class.get("/api/single-book").body)
    @single_book_data[0]
  end

  def get_id
    @single_book_data[0]["_id"]
  end

  def get_oid_character
    @single_book_data[0]["_id"]["$oid"]
  end

  def get_title
    @single_book_data[0]["title"]
  end

  def get_author
    @single_book_data[0]["author"]
  end

  def get_age
    @single_book_data[0]["age"]
  end

  def get_gender
    @single_book_data[0]["gender"]
  end

end
test = SingleBookService.new
puts test.get_single_book
