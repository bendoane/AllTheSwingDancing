class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :organizer
      t.date :date
      t.time :time
      t.string :location
      t.float :price
      t.string :type
      t.string :style
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
