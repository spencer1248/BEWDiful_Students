class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :email
      t.text :abstract

      t.timestamps
    end
  end
end
