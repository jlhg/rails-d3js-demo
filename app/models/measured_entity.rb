class MeasuredEntity < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :bioassay_measure_entity_count
  has_many :bioassays, through: :bioassay_measure_entity_count
end
