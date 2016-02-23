class BioassaysModelSystems < ActiveRecord::Migration
  def change
    create_table :bioassays_model_systems, id: false do |t|
      t.integer :bioassay_id
      t.integer :model_system_id
      t.integer :count
    end

    add_index :bioassays_model_systems, :bioassay_id
    add_index :bioassays_model_systems, :model_system_id
  end
end
