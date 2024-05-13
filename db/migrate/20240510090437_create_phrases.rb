class CreatePhrases < ActiveRecord::Migration[7.1]
  def change
    create_table :phrases do |t|
      t.text :text
      t.text :pronunciation
      t.text :literal_trans
      t.text :figurative_trans
      t.class :figurative_trans
      t.references :structure_id
      t.references :class_id
      t.references :subclass_id

      t.timestamps
    end
    add_index :phrases, :Text
  end
end
