class Bioassay < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :bioassay_perturbagen_count
  has_many :perturbagens, through: :bioassay_perturbagen_count

  has_many :bioassay_perturbation_count
  has_many :perturbations, through: :bioassay_perturbation_count

  has_many :bioassay_measure_entity_count
  has_many :measured_entities, through: :bioassay_measure_entity_count

  has_many :bioassay_model_sytem_count
  has_many :model_systems, through: :bioassay_model_sytem_count
end
