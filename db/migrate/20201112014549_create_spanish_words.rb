class CreateSpanishWords < ActiveRecord::Migration[6.0]
  def change
    create_table :spanish_words do |t|
      t.string :word
      t.string :meaning
      t.string :pos
      t.integer :score

      t.timestamps
    end
  end
end
