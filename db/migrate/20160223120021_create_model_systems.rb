class CreateModelSystems < ActiveRecord::Migration
  def change
    create_table :model_systems do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
