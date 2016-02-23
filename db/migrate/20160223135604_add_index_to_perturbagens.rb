class AddIndexToPerturbagens < ActiveRecord::Migration
  def change
    add_index :perturbagens, :name, unique: true
  end
end
