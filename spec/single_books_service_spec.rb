describe SingleBookService do

  before(:all) do
    @single_book_service = SingleBookService.new
  end

  it "should have a results hash" do
    expect(@single_book_service.get_single_book).to be_kind_of Hash
  end

  it "should return an oid character" do
    expect(@single_book_service.get_oid_character).to be_kind_of String
  end

  
end
