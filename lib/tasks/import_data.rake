namespace :import_data do
  task assaystats: :environment do
    data = JSON.parse(File.read('data/assayStatisticsData.json'))
    data.each do |d|
      bioassay = Bioassay.find_or_create_by name: d['AssayType']

      d['perturbagenType'].each do |name, count|
        perturbagen = Perturbagen.find_or_create_by name: name
        BioassayPerturbagenCount.find_or_create_by bioassay: bioassay,
                                                   perturbagen: perturbagen,
                                                   count: count
      end

      d['perturbationType'].each do |name, count|
        perturbation = Perturbation.find_or_create_by name: name
        BioassayPerturbationCount.find_or_create_by bioassay: bioassay,
                                                    perturbation: perturbation,
                                                    count: count
      end

      d['measuredEntity'].each do |name, count|
        measured_entity = MeasuredEntity.find_or_create_by name: name
        BioassayMeasuredEntityCount.find_or_create_by bioassay: bioassay,
                                                      measured_entity: measured_entity,
                                                      count: count
      end

      d['modelSystems'].each do |name, count|
        model_system = ModelSystem.find_or_create_by name: name
        BioassayModelSystemCount.find_or_create_by bioassay: bioassay,
                                                   model_system: model_system,
                                                   count: count
      end
    end
  end
end
