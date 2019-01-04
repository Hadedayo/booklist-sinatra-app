require 'json'
require 'httparty'

class SingleBookService
  include HTTParty

  base_uri 'api/books'

  def get_single_book
    @single_book_data = self.class.get('/api/books')
  end

  def print_results
    @single_book_data
  end

end
test = SingleBookService.new
puts test.get_single_book
