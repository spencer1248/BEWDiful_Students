class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.datetime :year_released

      t.timestamps
    end
  end
end
