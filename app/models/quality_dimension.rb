class QualityDimension < ActiveRecord::Base
  has_many :quality_measures
end
