# frozen_string_literal: true

class CreateProductImages < ActiveRecord::Migration[7.0]
  def change
    create_table :product_images, id: :uuid do |t|
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.string :image_url

      t.timestamps
    end
  end
end
