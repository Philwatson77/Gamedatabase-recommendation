class GamesController < ApplicationController
  before_action :check_for_admin, :only => [:destroy]
  before_action :check_for_login
  
  def index
    @games = Game.all
  end

    def new
    @game = Game.new
  end

  def create
    game = Game.create game_params
    redirect_to game
  end

  def edit
    @game = Game.find(params[:id])
  end
  
def update
  game = Game.find params[:id]
  game.update game_params
  redirect_to game
end

def show
    @game = Game.find params[:id]
   @result = GiantBomb::Search.new().query(@game.title).resources('game').offset(3).fetch
  end

  def destroy
    game = Game.find params[:id]
    game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:title, :release_date, :genre, :average_game_time, :platforms, :image)
  end
end
