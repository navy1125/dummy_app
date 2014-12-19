class CreateColosseumUserLevels < ActiveRecord::Migration
  def change
    create_table :colosseum_user_levels do |t|
      t.integer :user_no
      t.integer :user_level
      t.integer :times

      t.timestamps
    end
    add_index :colosseum_user_levels,:user_no
  end
end
