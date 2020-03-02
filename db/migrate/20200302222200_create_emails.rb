class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :path, null: false
      t.references :token, index: true, null: false

      t.timestamps
    end
  end
end
