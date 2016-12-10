class AddLikecountsToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :likes_count, :integer, :null => false, :default => 0
  end
end
