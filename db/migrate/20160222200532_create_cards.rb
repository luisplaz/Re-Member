class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.integer :deck_id, null: false, index: true
    	t.string :name, null: false
    	t.string :title, null: false
    	t.string :description, null: false

    	t.timestamps null:false
    end
  end
end
