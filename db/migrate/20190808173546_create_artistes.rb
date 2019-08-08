class CreateArtistes < ActiveRecord::Migration[5.2]
  def change
    create_table :artistes do |t|
      t.string :nom
      t.text :description
      t.date :date_naissance
      t.string :lieu_naissance
      t.integer :telephone
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
