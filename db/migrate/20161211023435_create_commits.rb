class CreateCommits < ActiveRecord::Migration[5.0]
  def change
    create_table :commits do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
