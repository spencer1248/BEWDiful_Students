class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :First_name
      t.string :Last_name
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
