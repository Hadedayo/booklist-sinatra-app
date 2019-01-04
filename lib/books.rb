require_relative 'services/single_books.rb'

class Books

  def single_api_books_service
    SingleBookService.new
  end

end
