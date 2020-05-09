class AddNameToMatchUser < ActiveRecord::Migration[5.2]
  def change
    add_column :match_users, :name, :string
  end
end
