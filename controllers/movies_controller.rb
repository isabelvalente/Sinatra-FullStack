class MoviesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  # INDEX
  get '/movies' do

   @title = "Movies"

   @movies = Movie.all

   erb :'movies/index'


  end

  # NEW
  get '/movies/new' do

    @movie = Movie.new

    erb :'movies/new'

  end

  # SHOW
  get '/movies/:id' do

    id = params[:id].to_i

    @movie = Movie.find id

    erb :'movies/:id'
  end

  # CREATE
  post '/movies' do
    movie = Movie.new

    movie.genre = params[:genre]
    movie.title = params[:title]

    movie.save

    redirect '/movies'

  end

  # EDIT
  get '/movies/:id/edit' do

    id = params[:id].to_i

    @movie = Movie.find id

    erb :'movies/edit'

  end

  # UPDATE
  put '/movies/:id' do
    id = params[:id].to_i

    movie = Movie.find id

    movie.genre = params[:genre]
    movie.title = params[:title]

    movie.save

    redirect '/movies'
  end

  # DESTROY
  delete '/movies/:id' do

    id = params[:id].to_i

    Movie.destroy id

    redirect '/movies'

  end

end
