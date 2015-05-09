class CreatePundits < ActiveRecord::Migration
  def change
    create_table :pundits do |t|
    	t.integer :reputation
    	t.string :op_eds_authored, array: true, default: []

      t.timestamps null: false
    end
  end
end
