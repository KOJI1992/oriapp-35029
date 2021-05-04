class GamesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @game = Game.all.order(id: 'DESC')
  end

  def show
  end

  def new
    @game = Game.new 
  end

  def create
    @game = Game.new(games_params)
    if @game.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update(games_params)
      redirect_to game_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to root_path
  end

  private

  def games_params
    params.require(:game).permit(:image, :name, :info, :good, :bad, :review_id).merge(user_id: current_user.id)
  end
  
  def set_game
    @game = Game.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.id == @game.user.id
  end
end
