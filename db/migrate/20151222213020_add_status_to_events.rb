class AddStatusToEvents < ActiveRecord::Migration
  def change
    add_column :events, :attendance_status, :string
  end
end
