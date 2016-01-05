class AddStatusToEvents < ActiveRecord::Migration
  def change
    add_column :events, :attendance_status, :boolean, null: false, default: false
    add_column :events, :event_image_id, :string
  end
end
