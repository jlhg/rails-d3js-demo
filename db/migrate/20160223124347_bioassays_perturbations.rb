class BioassaysPerturbations < ActiveRecord::Migration
  def change
    create_table :bioassays_perturbations, id: false do |t|
      t.integer :bioassay_id
      t.integer :perturbation_id
      t.integer :count
    end

    add_index :bioassays_perturbations, :bioassay_id
    add_index :bioassays_perturbations, :perturbation_id
  end
end
