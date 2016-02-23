class CreatePerturbagens < ActiveRecord::Migration
  def change
    create_table :perturbagens do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
