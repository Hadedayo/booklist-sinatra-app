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
    @list = results.find();
    erb :'pages/index'
  end

  get '/api/books' do
    client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'Book')
    db = client.database
    db.collections
    result = client[:booklist]
    data = result.find();
    m = data.to_a
    v = m.to_json
    
  end

end
