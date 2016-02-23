class BioassayModelSystemCount < ActiveRecord::Base
  belongs_to :bioassay
  belongs_to :model_system
end
