require_relative 'services/single_books.rb'
require_relative 'services/multiple_books.rb'

class Books

  def single_api_books_service
    SingleBookService.new
  end

  def multiple_api_books_service
    MultipleBookService.new
  end

end
