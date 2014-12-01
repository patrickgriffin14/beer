class AddBrewtypeToBrews < ActiveRecord::Migration
  def change
    add_column :brews, :brewtype, :string, default: 'IPA'
  end
end
