class RemoveTypeFromBrews < ActiveRecord::Migration
  def change
    remove_column :brews, :type, :string
  end
end
