require 'sinatra/base'
require './lib/player'
require './lib/game'
require 'pry'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])

    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  post '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_2.receive_damage
    erb :attack
  end

  run! if app_file == $0
end
