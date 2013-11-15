class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.belongs_to :notable, polymorphic: true

      t.timestamps
    end
  end
end
