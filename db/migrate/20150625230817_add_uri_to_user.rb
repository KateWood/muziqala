class AddUriToUser < ActiveRecord::Migration
  def change
  	add_column :users, :user_uri, :string
  	rename_column :users, :display_nameuser_uri, :display_name
  end
end
