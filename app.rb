# Battle

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
      'Testing infrastructure working!'
      erb(:index)
  end

  post '/names' do
    p params
    @player1 = params[:first_name]
    @player2 = params[:second_name]
    erb(:names)
  end
end
