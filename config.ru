require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?
require_relative 'controllers/post_controller.rb'
require 'mongo'
require 'json'
require 'json-prettyprint'

use Rack::Reloader
use Rack::MethodOverride
run PostController
