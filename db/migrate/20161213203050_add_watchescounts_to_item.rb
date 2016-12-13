class AddWatchescountsToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :watches_count, :integer, :null => false, :default => 0
  end
end