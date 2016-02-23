class AddIndexToModelSystems < ActiveRecord::Migration
  def change
    add_index :model_systems, :name, unique: true
  end
end
