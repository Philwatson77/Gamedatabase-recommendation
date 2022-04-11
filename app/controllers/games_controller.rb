class GamesController < ApplicationController
  before_action :check_for_login
  
  def new
    @game = Game.new
  end

  def create
    game = Game.create game_params
    @current_user.games << game
  end

  def edit
  end

  def show
  end
end
