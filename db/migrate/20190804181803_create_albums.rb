class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :titre
      t.text :description
      t.references :admin_user, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
