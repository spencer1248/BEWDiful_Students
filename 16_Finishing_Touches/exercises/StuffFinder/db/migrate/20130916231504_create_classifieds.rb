class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
			t.string   "title"
            t.string   "description"
            t.decimal  "price"
            t.datetime "created_at"
            t.datetime "updated_at"
            t.integer  "category_id"
            t.integer  "user_id"
    end
  end
end
