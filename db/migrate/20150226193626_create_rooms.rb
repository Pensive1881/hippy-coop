class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :member_id
      t.decimal :rent
    end
  end
end
