class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :service_type, null: false, foreign_key: true, type: :uuid
      t.text :description
      t.decimal :service_price
      t.decimal :pricing_rate

      t.timestamps
    end
  end
end
