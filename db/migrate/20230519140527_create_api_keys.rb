class CreateApiKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :api_keys, id: :uuid do |t|
      t.string :access_token
      t.string :secret_token
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
    add_index :api_keys, :access_token
  end
end
