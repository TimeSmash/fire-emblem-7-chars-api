class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :starting_class
      t.string :nationality
      t.string :occupation
      t.string :description
      t.string :affinity

      t.timestamps
    end
  end
end
