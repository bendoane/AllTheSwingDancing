class AddExternalWebsiteToEvents < ActiveRecord::Migration
  def change
    add_column :events, :url, :string
    add_column :events, :facebook_url, :string
  end
end
