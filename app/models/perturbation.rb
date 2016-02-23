class Perturbation < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :bioassay_perturbation_count
  has_many :bioassays, though: :bioassay_perturbation_count
end
