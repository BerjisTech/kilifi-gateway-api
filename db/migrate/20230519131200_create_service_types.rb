# frozen_string_literal: true

class CreateServiceTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :service_types, id: :uuid do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
