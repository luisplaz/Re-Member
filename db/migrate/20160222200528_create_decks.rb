class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
    	t.integer :user_id, null: false, index: true
    	t.string :name,     null: false

    	t.timestamps        null:false
    end
  end
end
