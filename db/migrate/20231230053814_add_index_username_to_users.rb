class AddIndexUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :username
    add_index(:users, :username, unique: true)
  end
end
