class CreateMediaFiles < ActiveRecord::Migration
  def self.up
    create_table :media_files do |t|
      t.string :name
      t.string :kind
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :audio_file_name
      t.string :audio_content_type
      t.integer :audio_file_size
      t.datetime :audio_updated_at
      t.string :video_file_name
      t.string :video_content_type
      t.integer :video_file_size
      t.datetime :video_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :media_files
  end
end
