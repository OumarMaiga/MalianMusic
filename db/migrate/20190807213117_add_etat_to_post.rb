class AddEtatToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :etat, :boolean
  end
end
