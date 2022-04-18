class LikedgamesController < ApplicationController
    before_action :check_for_login

    def new 
        @game = Game.new
    end

    def create
        game = Game.create game_params
        @current_user.games << game

        redirect_to root_path
end

private
def game_params
    params.require(:game).permit(:title)
    end
end
