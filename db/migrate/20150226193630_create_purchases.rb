class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :goods
      t.decimal :cost
      t.integer :member_id
    end
  end
end
