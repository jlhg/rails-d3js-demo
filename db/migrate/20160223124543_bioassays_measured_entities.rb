class BioassaysMeasuredEntities < ActiveRecord::Migration
  def change
    create_table :bioassays_measured_entities, id: false do |t|
      t.integer :bioassay_id
      t.integer :measured_entity_id
      t.integer :count
    end

    add_index :bioassays_measured_entities, :bioassay_id
    add_index :bioassays_measured_entities, :measured_entity_id
  end
end
