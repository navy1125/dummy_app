class CreateUserHeroNums < ActiveRecord::Migration
  def change
    create_table :user_hero_nums do |t|
      t.integer :user_no
      t.integer :hero_num

      t.timestamps
    end
    add_index :user_hero_nums,:user_no
  end
end
