class ChangeColumnTypeOfAdminInUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :admin, 'boolean USING CAST(admin AS boolean)'
  end
end
