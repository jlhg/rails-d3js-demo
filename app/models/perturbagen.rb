class Perturbagen < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :bioassay_perturbagen_count
  has_many :bioassays, through: :bioassay_perturbagen_count
end
