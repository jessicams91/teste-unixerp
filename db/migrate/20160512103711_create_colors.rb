class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :colors, :products
  end
end
