class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :name
      t.text :description
      t.boolean :great
      t.boolean :inside
      t.boolean :new
      t.string :opinion

      t.timestamps null: false
    end
  end
end
