class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/new' do
    @genres = Genre.all
    erb :"songs/new"
  end

  post '/songs/new' do
    @artist = Artist.create(params[:artist])
    @song = @artist.songs.create(params[:song])
    redirect "songs/index"
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :"songs/show"
  end

  get '/songs/:slug/edit' do
    @song = Song.find_by_slug(params[:slug])
    erb :"songs/edit"
  end

  patch '/songs/:slug/edit' do
    @song = Song.find_by_slug(params[:slug])
    redirect "songs/index"
  end
end
