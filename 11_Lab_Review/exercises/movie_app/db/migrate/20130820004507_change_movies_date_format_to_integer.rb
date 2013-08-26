class ChangeMoviesDateFormatToInteger < ActiveRecord::Migration
  def change
  	change_column :movies, :year_released, :integer
  end
end
