class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :building_type
      t.text :description
      t.string :location
      t.boolean :availability
      t.decimal :rate
      t.integer :owner_id
      t.string :image_url

      t.timestamps
    end
  end
end
