class PinsController < ApplicationController
  def index
    @pins = Pin.joins(boards: :user).uniq ## Too MUCH MAGIC.... ###########################
  end

  def new_pin
  end

  def new
    @pin = Pin.new
  end

  def display_pins
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @image = req["url"]
      # redirect_to new_pin_path
    else
      @page = Nokogiri::HTML(RestClient.get(params[:url]))
    end
  end

  def create
    @pin = Pin.new pin_params
    @pin.boards << Board.find(params[:pin][:board_ids])
    if @pin.save
      path = pins_path + '/' + @pin.id.to_s
      redirect_to path
    else
      redirect_to :new
    end
  end

  def show
    @pin = Pin.find params[:id]
    @board = @pin.boards.where("user_id = ?", @current_user.id).first
  end

  def edit
    @pin = Pin.find params[:id]
  end

  def update
    pin = Pin.find params[:id]
    pin.update pin_params
    path = pins_path + '/' + pin.id.to_s
    redirect_to path
  end

  def destroy
    pin = Pin.find params[:id]
    pin.destroy
    redirect_to pins_path
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :url, :image)
  end

end
