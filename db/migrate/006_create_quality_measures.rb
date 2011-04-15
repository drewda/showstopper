class CreateQualityMeasures < ActiveRecord::Migration
  def self.up
    create_table :quality_measures do |t|
      t.integer :media_file_id
      t.integer :quality_dimension_id
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :quality_measures
  end
end
