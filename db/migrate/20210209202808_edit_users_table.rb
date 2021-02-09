class EditUsersTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :username 
    change_column :users, :username, :string, unique: true
    remove_column :users, :email
  end
end
