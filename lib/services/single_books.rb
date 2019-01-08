require 'json'
require 'httparty'

class SingleBookService
  include HTTParty

  base_uri 'http://localhost:9292'

  def get_single_book
    @single_book_data = JSON.parse(self.class.get("/api/single-book").body)
  end

  def get_title
    @single_book_data
  end

end
test = SingleBookService.new
puts test.get_single_book
puts test.get_single_book.class
