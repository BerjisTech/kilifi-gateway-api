# frozen_string_literal: true

class CreateStoreBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :store_branches, id: :uuid do |t|
      t.references :store, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.string :coordinates
      t.string :location_name

      t.timestamps
    end
  end
end
