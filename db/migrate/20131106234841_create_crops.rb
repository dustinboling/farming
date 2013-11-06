class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.string :name
      t.text :description
      t.references :farm, index: true

      t.timestamps
    end
  end
end
