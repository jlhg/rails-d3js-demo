class ModelSystem < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :bioassay_model_sytem_count
  has_and_belongs_to_many :bioassays, through: :bioassay_model_sytem_count
end
