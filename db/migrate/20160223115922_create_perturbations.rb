class CreatePerturbations < ActiveRecord::Migration
  def change
    create_table :perturbations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
