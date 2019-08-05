class RemoveOccupationFromCharacters < ActiveRecord::Migration[5.2]
  def change
    remove_column :characters, :occupation
  end
end
