require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?
require_relative 'controllers/post_controller.rb'
require_relative "./models/books.rb"
require 'mongo'
require 'neatjson'
require 'json'

use Rack::Reloader
use Rack::MethodOverride
run PostController
