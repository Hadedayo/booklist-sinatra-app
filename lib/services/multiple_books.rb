require 'json'
require 'httparty'

class MultipleBookService
  include HTTParty

  base_uri 'http://localhost:9292'

  def get_multiple_books
    @multiple_book_data = JSON.parse(self.class.get("/api/multiple-books").body)
  end

end
