class CreateUserMercenaryNums < ActiveRecord::Migration
  def change
    create_table :user_mercenary_nums do |t|
      t.integer :user_no
      t.integer :mercenary_num

      t.timestamps
    end 
    add_index :user_mercenary_nums,:user_no
  end
end
