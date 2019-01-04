require 'json'
require 'httparty'

class SingleBookService
  include HTTParty

  base_uri 'http://localhost:9292'

  def get_single_book
    @single_book_data = JSON.parse(self.class.get("/api/single-book").body)
  end

end
