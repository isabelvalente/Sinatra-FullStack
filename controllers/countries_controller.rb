class CountriesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  # INDEX
  get '/countries' do

   @title = "Countries"

   @countries = Country.all

   erb :'countries/index'


  end

  # NEW
  get '/countries/new' do

    @country = Country.new

    erb :'countries/new'

  end

  # SHOW
  get '/countries/:id' do

    id = params[:id].to_i

    @country = Country.find id

    erb :'countries/:id'
  end

  # CREATE
  post '/countries' do
    country = Country.new

    country.country = params[:country]
    country.city = params[:city]

    country.save

    redirect '/countries'

  end

  # EDIT
  get '/countries/:id/edit' do

    id = params[:id].to_i

    @country = Country.find id

    erb :'countries/edit'

  end

  # UPDATE
  put '/countries/:id' do
    id = params[:id].to_i

    country = Country.find id

    country.country = params[:country]
    country.city = params[:city]

    country.save

    redirect '/countries'
  end

  # DESTROY
  delete '/countries/:id' do

    id = params[:id].to_i

    Country.destroy id

    redirect '/countries'

  end

end
