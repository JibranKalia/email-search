class CreateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :tokens do |t|
      t.string :word
      t.timestamps
    end
    add_index :tokens, :word
  end
end
