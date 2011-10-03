class Gallery::DisplayController < ApplicationController
  def setup
    @displays = Display.all
  end
  
  def display
    @display = Display.find(params[:display_id])
  end
  
  def image_control
    @displays = Display.all
    @tags = MediaFile.tag_counts
  end
  def sound_control
    @displays = Display.all
    @sounds = MediaFile.where(:kind => 'audio')
  end
  def reload_control
    @displays = Display.all
  end
  
  def push_to_displays
    command = params[:command]
    attribute1 = params[:attribute1]
    display = params[:display]
    id = params[:id]
    
    if command == 'tag'
      Juggernaut.publish(display, 'tag|' + attribute1)
    elsif command == 'audio'
      audio = MediaFile.find(id)
      Juggernaut.publish(display, "audio|#{audio.audio_url}")
    elsif command == 'reload'
      Juggernaut.publish(display, 'reload')
    end
    
    render :text => 'ok'
  end
end