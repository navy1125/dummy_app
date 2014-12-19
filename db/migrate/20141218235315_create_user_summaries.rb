class CreateUserSummaries < ActiveRecord::Migration
  def change
    create_table :user_summaries do |t|
      t.integer :user_no
      t.integer :gold
      t.integer :ap
      t.integer :hero_max_level
      t.integer :reg_dt
      t.string :last_active_dt
      t.integer :stage_info_no
      t.integer :hero_num
      t.integer :mercenary_num
      t.integer :paid_user
      t.integer :paid_gold
      t.integer :paid_balance
      t.integer :free_balance
      t.integer :medal_cnt

      t.timestamps
    end 
    add_index :user_summaries,:user_no
  end
end
