describe SingleBookService do

  before(:all) do
    @single_book_service = SingleBookService.new
  end

  it "should have a results hash" do
    expect(@single_book_service.get_single_book).to be_kind_of Hash
  end

  it "should return an oid character as a string" do
    expect(@single_book_service.get_oid_character).to be_kind_of String
  end

  it "should return the length of oid character as 24" do
    expect(@single_book_service.get_length_of_oid_character).to eq 24
  end

  it "should return title of the book as a string" do
    expect(@single_book_service.get_title).to be_kind_of String
    expect(@single_book_service.get_title).to eq "The Hate U Give"
  end

  it "should return author of the book as a string" do
    expect(@single_book_service.get_author).to be_kind_of String
    expect(@single_book_service.get_author).to eq 'Angie Thomas'
  end

  it "should return age of the book as a numeric" do
    expect(@single_book_service.get_age).to be_kind_of Numeric
    expect(@single_book_service.get_age).to eq 34.0
  end

  it "should return gender of the book as a string" do
    expect(@single_book_service.get_gender).to be_kind_of String
    expect(@single_book_service.get_gender).to eq 'Female'
  end

end
