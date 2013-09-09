class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.integer :voter_id
      t.integer :question_id

      t.timestamps
    end
  end
end
