class RenamePostUserToArtiste < ActiveRecord::Migration[5.2]
  def change
    change_table :posts do |t|
      t.rename :users_id, :artiste_id
    end
  end
end
