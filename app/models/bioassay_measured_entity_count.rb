class BioassayMeasuredEntityCount < ActiveRecord::Base
  belongs_to :bioassay
  belongs_to :measured_entity
end
