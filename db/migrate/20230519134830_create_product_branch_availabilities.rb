class CreateProductBranchAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :product_branch_availabilities, id: :uuid do |t|
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.references :store_branch, null: false, foreign_key: true, type: :uuid
      t.boolean :availability

      t.timestamps
    end
  end
end
