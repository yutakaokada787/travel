class CreatePreparations < ActiveRecord::Migration[6.1]
  def change
    create_table :preparations do |t|
      t.string :body
      t.integer :user_id
      t.timestamps
    end
  end
end
