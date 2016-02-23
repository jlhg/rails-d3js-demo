class Bioassay < ActiveRecord::Base
  validates_uniqueness_of :name
  has_and_belongs_to_many :perturbagens
  has_and_belongs_to_many :perturbations
  has_and_belongs_to_many :measured_entities
  has_and_belongs_to_many :model_systems
end
