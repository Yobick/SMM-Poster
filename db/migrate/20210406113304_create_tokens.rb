class CreateTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokens do |t|
      t.text :token_use
      t.text :target_id
      t.integer :social_name

      t.timestamps
    end
    add_reference :tokens, :user, index: true
  end
end
