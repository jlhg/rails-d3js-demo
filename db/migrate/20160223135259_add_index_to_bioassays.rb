class AddIndexToBioassays < ActiveRecord::Migration
  def change
    add_index :bioassays, :name, unique: true
  end
end
