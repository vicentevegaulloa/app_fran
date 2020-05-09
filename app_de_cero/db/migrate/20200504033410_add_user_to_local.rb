class AddUserToLocal < ActiveRecord::Migration[5.2]
  def change
    add_reference :locals, :local_user, foreign_key: true
  end
end
