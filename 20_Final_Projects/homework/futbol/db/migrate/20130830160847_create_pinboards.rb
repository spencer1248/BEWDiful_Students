class CreatePinboards < ActiveRecord::Migration
  def change
    create_table :pinboards do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
