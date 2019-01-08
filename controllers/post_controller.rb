require 'json'
class PostController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }

    configure:development do
      register Sinatra::Reloader
    end

  get '/' do
    my_db = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'Book')
    the_db = my_db.database
    the_db.collections
    results = my_db[:booklist]
    @list = results.find()
    erb :'pages/index'
  end

  get '/api/multiple-books' do
    client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'Book')
    db = client.database
    db.collections
    result = client[:booklist]
    data_hash = result.find()
    get_array = data_hash.to_a
    get_json = get_array.to_json
  end

  get '/api/single-book' do
    client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'Book')
    db = client.database
    db.collections
    result = db[:booklist]
    get_data = result.find({"title": "The Hate U Give"})
    array = get_data.to_a
    json = array.to_json
  end

end
