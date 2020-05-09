class AddNameToLocalUser < ActiveRecord::Migration[5.2]
  def change
    add_column :local_users, :name, :string
  end
end
