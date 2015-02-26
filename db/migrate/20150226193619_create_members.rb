class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :room_id
      # t.integer :purchase_id
    end
  end
end
