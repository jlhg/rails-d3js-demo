class CreateBioassayMeasureEntityCounts < ActiveRecord::Migration
  def change
    create_table :bioassay_measure_entity_counts do |t|
      t.belongs_to :bioassay, index: true
      t.belongs_to :measured_entity, index: true
      t.integer :count
      t.timestamps null: false
    end
  end
end
