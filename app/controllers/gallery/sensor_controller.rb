class Gallery::SensorController < ApplicationController
  def trigger
    command = params[:command]
    rule = params[:rule]
    
    if command == 'shake'
      if rule == 'fire'
        Juggernaut.publish(['TowerTop', 'FrontUp', 'TowerLow', 'FrontBack', 'DrewLaptop'], 'tag|Fire')
        Juggernaut.publish(['FrontUp', 'DrewLaptop'], 'audio|http://www.soundjay.com/nature/sounds/campfire-1.mp3')
        Juggernaut.publish('TowerTop', 'audio|http://www.soundjay.com/nature/sounds/fire-1.mp3')
      elsif rule == 'randomImagesTopTower'
        randomTag = MediaFile.tag_counts.shuffle.first.to_s
        if randomTag == 'human'
          randomTag == 'Dark' # no nudes for the opening
        end
        Juggernaut.publish(['TowerTop','TowerLow','DrewLaptop'], "tag|#{randomTag}")
        randomAudio = MediaFile.where(:kind => 'audio').shuffle.first.audio_url
        Juggernaut.publish(['TowerTop', 'DrewLaptop'], "audio|#{randomAudio}")
      elsif rule == 'randomSoundFrontUp'
        randomTag = MediaFile.tag_counts.shuffle.first.to_s
        if randomTag == 'human'
          randomTag == 'Dark' # no nudes for the opening
        end
        Juggernaut.publish(['FrontUp','FrontBack','DrewLaptop'], "tag|#{randomTag}")
        randomAudio = MediaFile.where(:kind => 'audio').shuffle.first.audio_url
        Juggernaut.publish(['FrontUp', 'DrewLaptop'], "audio|#{randomAudio}")
      end
    end
    
    render :text => 'ok'
  end
end
