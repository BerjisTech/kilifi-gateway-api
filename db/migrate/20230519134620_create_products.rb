# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :discount
      t.boolean :availability
      t.string :product_type
      t.references :store_branch, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
