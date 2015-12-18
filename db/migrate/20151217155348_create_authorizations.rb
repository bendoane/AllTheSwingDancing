class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.string :provider
      t.string :uid
      t.integer :user_id

      t.timestamps null: false
    end
  end
  def down
    drop_table :authorizations
  end
end
