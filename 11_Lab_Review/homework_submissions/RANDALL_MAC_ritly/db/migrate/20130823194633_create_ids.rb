class CreateIds < ActiveRecord::Migration
  def change
    create_table :ids do |t|
      t.string :url
      t.string :hashcode
      t.string :created
      t.string :updated

      t.timestamps
    end
  end
end
