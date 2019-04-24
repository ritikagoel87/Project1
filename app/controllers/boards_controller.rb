class BoardsController < ApplicationController
  before_action :check_for_login, :only => [:edit, :new]

  def new
    @board = Board.new
  end

  def create
    @board = Board.new board_params
    if @board.save
      path = boards_path + '/' + @board.id.to_s
      redirect_to path
    else
      render :new
    end
  end

  def edit
    @board = Board.find params[:id]
  end

  def update
    board = Board.find params[:id]
    board.update board_params
    redirect_to board_path
  end

  def show
    @board = Board.find params[:id]
  end

  def destroy
    board = Board.find params[:id]
    board.destroy
    redirect_to @user_home
  end

  private
  def board_params
    params.require(:board).permit(:name, :image, :user_id)
  end
end
