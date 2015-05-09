class CreateOpEds < ActiveRecord::Migration
  def change
    create_table :op_eds do |t|
    	t.integer :pundit_id
      t.string :title
      t.text :content
      t.integer :likes
      t.integer :dislikes
      

      t.timestamps null: false
    end
  end
end
