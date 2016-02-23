class Perturbagen < ActiveRecord::Base
  has_and_belongs_to_many :bioassays
end
