describe SingleBookService do

  before(:all) do
    @single_book_service = SingleBookService.new.get_single_book
  end

  it "should have a results hash" do
    expect(@single_book_service).to be_kind_of Hash
  end

  


end
