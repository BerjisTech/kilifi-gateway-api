class CreateServiceTypes < ActiveRecord::Migration[7.0]
  def change
    drop_table :service_types
    create_table :service_types, id: :uuid do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
