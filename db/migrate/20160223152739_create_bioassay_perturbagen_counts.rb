class CreateBioassayPerturbagenCounts < ActiveRecord::Migration
  def change
    create_table :bioassay_perturbagen_counts do |t|
      t.belongs_to :bioassay, index: true
      t.belongs_to :perturbagen, index: true
      t.integer :count
      t.timestamps null: false
    end
  end
end
