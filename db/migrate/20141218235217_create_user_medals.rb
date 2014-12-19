class CreateUserMedals < ActiveRecord::Migration
  def change
    create_table :user_medals do |t|
      t.integer :user_no
      t.integer :medal_cnt

      t.timestamps
    end
    add_index :user_medals,:user_no
  end
end
