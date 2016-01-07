class AddStatusToEvents < ActiveRecord::Migration
  def change
    add_column :users, :attendance_status, :boolean, null: false, default: true
    add_column :events, :event_image_id, :string
  end
end
