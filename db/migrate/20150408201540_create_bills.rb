class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
    	t.integer :member_id
      t.string :title
      t.text :body      
      t.integer :co_sponsors, array: true, default: []
      t.integer :votes_yea
      t.integer :votes_nay
      t.integer :likes
      t.integer :dislikes
      t.date :floor_date
      t.boolean :passed

      t.timestamps null: false
    end
  end
end
