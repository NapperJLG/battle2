

require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do

    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect "/play"

  end

  get '/play' do

    @player1 = session[:player1]
    @player2 = session[:player2]

    erb(:play)
  end

  get '/player1attack' do

    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end


  run! if app_file == $0
end
