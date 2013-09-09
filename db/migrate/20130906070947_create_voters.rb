class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :voter_id

      t.timestamps
    end
  end
end
