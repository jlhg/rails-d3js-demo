class CreateBioassayModelSystemCounts < ActiveRecord::Migration
  def change
    create_table :bioassay_model_system_counts do |t|
      t.belongs_to :bioassay, index: true
      t.belongs_to :model_system, index: true
      t.integer :count
      t.timestamps null: false
    end
  end
end
