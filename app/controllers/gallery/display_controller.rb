class DisplayController < ApplicationController
  def setup
    @displays = Display.all
  end
  
  def display
    @display = Display.find(params[:display_id])
  end
end