class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :single_access_token
      t.string :user_avatar

      t.string :first_name
      t.string :last_name
      t.integer :login_count, :default => 0
      t.integer :failed_login_count, :default => 0
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string   :current_login_ip
      t.string   :last_login_ip
      t.text   :omniauth_data

      t.timestamps null: false
    end
    add_index "users", ["first_name"], :name => "index_users_on_first_name"
  end

  def down
    drop_table "users"
  end

end
