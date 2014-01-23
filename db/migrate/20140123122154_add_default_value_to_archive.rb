class AddDefaultValueToArchive < ActiveRecord::Migration
  def change
  	change_column :questions, :archive, :boolean, default: false
  end
end
