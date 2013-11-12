class CreateSeedings < ActiveRecord::Migration
  def change
    create_table :seedings do |t|
      t.references :bean, index: true
      t.references :crop, index: true

      t.timestamps
    end
  end
end
