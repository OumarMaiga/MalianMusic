class RenamePostTypeToTyp < ActiveRecord::Migration[5.2]
  def change
    change_table :posts do |t|
      t.rename :type, :typ
    end
  end
end
