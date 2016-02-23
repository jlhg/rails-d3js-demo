class BioassayPerturbagenCount < ActiveRecord::Base
  belongs_to :bioassay
  belongs_to :perturbagen
end
