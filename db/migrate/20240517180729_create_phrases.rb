class CreatePhrases < ActiveRecord::Migration[7.1]
  def change
    create_table :phrases do |t|
      t.string :text
      t.string :pronunciation
      t.string :literal_trans
      t.string :figurative_trans
      t.string :structure
      t.string :gclass
      t.string :subclass

      t.timestamps
    end
  end
end
