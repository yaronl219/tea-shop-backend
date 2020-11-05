class CreateTeas < ActiveRecord::Migration[6.0]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :link
      t.float :price
      t.string :tea_type

      t.timestamps
    end
  end
end
