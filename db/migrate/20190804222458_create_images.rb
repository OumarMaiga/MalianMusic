class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :titre
      t.references :admin_user
      t.references :user
      t.references :post
      t.references :album
      t.references :mixtape

      t.timestamps
    end
  end
end
