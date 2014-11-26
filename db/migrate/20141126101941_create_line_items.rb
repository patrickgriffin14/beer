class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :brew, index: true
      t.references :favourite, index: true

      t.timestamps
    end
  end
end
