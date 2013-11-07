class CreateCropages < ActiveRecord::Migration
  def change
    create_table :cropages do |t|
      t.references :bean, index: true
      t.references :crop, index: true

      t.timestamps
    end
  end
end
