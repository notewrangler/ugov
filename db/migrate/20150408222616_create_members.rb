class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.integer :reputation
    	t.string :bills_authored, array: true, default: []
    	t.string :bills_passed, array: true, default: []
    	t.string :amendments_offered, array: true, default: []
    	t.string :amendments_passed, array: true, default: []
    	

      t.timestamps null: false
    end
  end
end
