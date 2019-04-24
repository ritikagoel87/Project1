class PinsController < ApplicationController
  def new
    @pin = Pin.new
  end

  def show
    @pin = Pin.find params[:id]
  end

  def edit
    @pin = Pin.find params[:id]
  end

  def update
    @pin = Pin.new pin_params
    if @pin.save
      path = pins_path + '/' + @pin.id.to_s
      redirect_to path
    else
      redirect_to :new
    end
  end
end
