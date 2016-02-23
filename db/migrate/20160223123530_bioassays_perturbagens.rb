class BioassaysPerturbagens < ActiveRecord::Migration
  def change
    create_table :bioassays_perturbagens, id: false do |t|
      t.integer :bioassay_id
      t.integer :perturbagen_id
      t.integer :count
    end

    add_index :bioassays_perturbagens, :bioassay_id
    add_index :bioassays_perturbagens, :perturbagen_id
  end
end
