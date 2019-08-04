class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :titre
      t.text :description
      t.string :contenu
      t.string :type
      t.integer :telechagement
      t.integer :vue
      t.integer :like
      t.references :admin_users
      t.references :users
      t.references :albums
      t.references :mixtapes

      t.timestamps
    end
  end
end
