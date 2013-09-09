class CreateIpAddresses < ActiveRecord::Migration
  def change
    create_table :ip_addresses do |t|
      t.string :ip
      t.integer :voter_id

      t.timestamps
    end
  end
end
