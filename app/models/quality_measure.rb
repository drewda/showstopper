class QualityMeasure < ActiveRecord::Base
  belongs_to :media_file
  belongs_to :quality_measure
end
