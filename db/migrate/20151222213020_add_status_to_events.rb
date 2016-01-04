class AddStatusToEvents < ActiveRecord::Migration
  def change
    add_column :events, :attendance_status, :string
    add_column :events, :event_image_id, :string
  end
end
