class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Avatar, :string
  end
end
