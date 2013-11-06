class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :first_name
      t.string :last_name
      t.string :spouse_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.references :farm, index: true

      t.timestamps
    end
  end
end
