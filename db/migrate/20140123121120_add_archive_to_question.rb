class AddArchiveToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :archive, :boolean
  end
end
