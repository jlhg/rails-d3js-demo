class CreateBioassays < ActiveRecord::Migration
  def change
    create_table :bioassays do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
