class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries, id: :uuid do |t|
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.string :delivery_option
      t.decimal :delivery_price

      t.timestamps
    end
  end
end
