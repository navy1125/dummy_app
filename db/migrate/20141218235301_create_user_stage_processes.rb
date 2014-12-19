class CreateUserStageProcesses < ActiveRecord::Migration
  def change
    create_table :user_stage_processes do |t|
      t.integer :user_no
      t.integer :stage_info_no

      t.timestamps
    end 
    add_index :user_stage_processes,:user_no
  end
end
