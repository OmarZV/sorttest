class AddCommitscountsToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :commits_count, :integer, :null => false, :default => 0
  end
end
