class CreateJoinTableTokenEmail < ActiveRecord::Migration[6.0]
  def change
    create_join_table :tokens, :emails do |t|
      t.index [:token_id, :email_id], unique: true
      t.index [:email_id, :token_id], unique: true
    end
  end
end
