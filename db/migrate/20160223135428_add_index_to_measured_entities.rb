class AddIndexToMeasuredEntities < ActiveRecord::Migration
  def change
    add_index :measured_entities, :name, unique: true
  end
end
