# frozen_string_literal: true

class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles, id: :uuid do |t|
      t.references :store, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.text :permissions

      t.timestamps
    end
  end
end
