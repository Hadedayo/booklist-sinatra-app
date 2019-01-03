# class Book
#   attr_accessor :the_booklist, :title, :author, :age, :gender
#
#   def self.open_connection
#     client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'Book')
#     db = client.database
#     db.collections
#     result = client[:booklist]
#     @the_booklist = result.find();
#   end
#
#
#
# end
