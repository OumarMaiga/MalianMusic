class RenameAlbumUserToArtiste < ActiveRecord::Migration[5.2]
  def change
    change_table :albums do |t|
      t.rename :user_id, :artiste_id
    end
  end
end
