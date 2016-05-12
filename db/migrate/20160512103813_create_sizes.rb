class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name
      t.references :color, index: true

      t.timestamps null: false
    end
    add_foreign_key :sizes, :colors
  end
end
