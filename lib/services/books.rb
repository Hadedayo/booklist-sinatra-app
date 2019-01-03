class Books

  def single_api_books_service
    SingleBookService.new
  end

  def multiple_api_books_service
    MultipleBookService.new
  end

end
