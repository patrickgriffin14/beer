class CreateBrews < ActiveRecord::Migration
  def change
    create_table :brews do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :origin
      t.string :website
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
