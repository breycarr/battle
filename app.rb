# Battle

require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  get '/' do
      erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    game = Game.new
    game.attack(@player2)
    erb(:attack)
  end
end
