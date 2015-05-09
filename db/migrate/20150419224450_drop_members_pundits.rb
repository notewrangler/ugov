class DropMembersPundits < ActiveRecord::Migration
  def change
  	drop_table :members 
  	drop_table :pundits
  end
end
