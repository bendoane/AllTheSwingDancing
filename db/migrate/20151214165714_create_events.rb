class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :organizer
      t.date :date
      t.time :time
      t.string :location
      t.float :price
      t.string :event_type
      t.string :dance_style
      t.integer :event_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
