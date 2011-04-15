class CreateQualityDimensions < ActiveRecord::Migration
  def self.up
    create_table :quality_dimensions do |t|
      t.string :name
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end

  def self.down
    drop_table :quality_dimensions
  end
end
