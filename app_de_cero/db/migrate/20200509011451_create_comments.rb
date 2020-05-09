class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :stars
      t.text :body
      t.references :match_user, foreign_key: true
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
