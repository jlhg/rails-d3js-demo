class CreateBioassayPerturbationCounts < ActiveRecord::Migration
  def change
    create_table :bioassay_perturbation_counts do |t|
      t.belongs_to :bioassay, index: true
      t.belongs_to :perturbation, index: true
      t.integer :count
      t.timestamps null: false
    end
  end
end
