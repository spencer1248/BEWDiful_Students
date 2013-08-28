class CreatePositions < ActiveRecord::Migration
  def change
    create_table  :positions do |t|
    	t.string  :goal_keeper
    	t.string  :defender
    	t.string  :midfielder
    	t.string  :forward
    	t.integer :player_id
      t.timestamps
    end

    add_index :positions, :player_id
  end
end
