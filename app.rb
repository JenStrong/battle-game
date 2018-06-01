require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect'/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_2_hit_points = $player_2.hit_points
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new(@player_1, @player_2).attack(@player_2)
    erb :attack
  end

  run! if app_file == $0
end
