class HomeController < ApplicationController
  def index
  end

  def data
    records = []
    Bioassay.all.each do |x|
      record = {
        AssayType: x.name,
        perturbagenType: {},
        perturbationType: {},
        measuredEntity: {},
        modelSystems: {}
      }
      x.bioassay_perturbagen_count.each do |y|
        record[:perturbagenType][y.perturbagen.name] = y.count
      end

      x.bioassay_perturbation_count.each do |y|
        record[:perturbationType][y.perturbation.name] = y.count
      end

      x.bioassay_measured_entity_count.each do |y|
        record[:measuredEntity][y.measured_entity.name] = y.count
      end

      x.bioassay_model_system_count.each do |y|
        record[:modelSystems][y.model_system.name] = y.count
      end
      records.push record
    end
    render json: records
  end
end
