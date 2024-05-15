class CreatePhrases < ActiveRecord::Migration[7.1]
  def change
    create_table :phrases do |t|
      t.text :text
      t.text :pronunciation
      t.text :literal_trans
      t.text :figurative_trans
      t.text :structure
      t.text :class
      t.text :subclass

      t.timestamps
    end
    add_index :phrases, :Text
  end
end
