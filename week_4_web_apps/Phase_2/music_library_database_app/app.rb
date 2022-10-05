# file: app.rb
require 'sinatra'
require "sinatra/reloader"
require_relative 'lib/database_connection'
require_relative 'lib/album_repository'
require_relative 'lib/artist_repository'

DatabaseConnection.connect

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload 'lib/album_repository'
    also_reload 'lib/artist_repository'
  end

  get '/albums' do
    album_repo = AlbumRepository.new
    @albums = album_repo.all
  
    return erb(:albums)
  end


  post '/albums' do
    if album_invalid_request_parameters?
      status 400
      return ''
    end
    
    repo = AlbumRepository.new
    new_album = Album.new
    new_album.title = params[:title]
    new_album.release_year = params[:release_year]
    new_album.artist_id = params[:artist_id]

    repo.create(new_album)

    return erb(:album_created)

  end

  def album_invalid_request_parameters?
    params[:title] == nil || params[:release_year] == nil || params[:artist_id] == nil
  end
  
  get '/albums/new' do
    return erb(:new_album_form)
  end

  get '/artists' do
    repo = ArtistRepository.new
    @artists = repo.all

    return erb(:artists2)
  end

  post '/artists' do
    if params[:name] == nil || params[:genre] == nil
      status 400
      return ''
    end

    repo = ArtistRepository.new

    new_artist = Artist.new
    new_artist.name = params[:name]
    new_artist.genre = params[:genre]

    repo.create(new_artist)

    return erb(:artist_created)
  end

  get '/artists/new' do
    return erb(:new_artist_form)
  end

  get '/albums/:id' do
    album_repo = AlbumRepository.new

    album_repo.all
    @album = album_repo.find(params[:id])
  
    artist_repo = ArtistRepository.new
    @artist = artist_repo.find(@album.artist_id)
    
    return erb(:index)
  end

  get "/artists/:id" do
    repo = ArtistRepository.new
    repo.all

    @artist = repo.find(params[:id])
    return erb(:artists)
  end

end