class BioassayPerturbationCount < ActiveRecord::Base
  belongs_to :bioassay
  belongs_to :perturbation
end
