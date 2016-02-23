class AddIndexToPerturbations < ActiveRecord::Migration
  def change
    add_index :perturbations, :name, unique: true
  end
end
