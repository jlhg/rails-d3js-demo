class CreateMeasuredEntities < ActiveRecord::Migration
  def change
    create_table :measured_entities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
