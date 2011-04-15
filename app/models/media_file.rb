class MediaFile < ActiveRecord::Base
  acts_as_taggable
  
  has_attached_file :image
  has_attached_file :audio
  has_attached_file :video
end
