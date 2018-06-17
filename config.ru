require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/Country.rb'
require_relative './models/Movie.rb'
require_relative './controllers/countries_controller.rb'
require_relative './controllers/movies_controller.rb'
require_relative './controllers/static_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  StaticController,
  MoviesController,
  CountriesController
])
