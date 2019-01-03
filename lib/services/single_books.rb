require 'json'

class SingleBookService
  # include HTTParty
  #
  # base_uri 'https://api.postcodes.io'

  def get_single_book(book)
    @single_postcode_data = JSON.parse(self.class.get("/book/#{book}").body)
  end

  def print_results
    @single_postcode_data
  end

end
