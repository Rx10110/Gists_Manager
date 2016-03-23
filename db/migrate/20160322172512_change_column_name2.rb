class ChangeColumnName2 < ActiveRecord::Migration
  def change
      rename_column :gists, :client_id, :user_id
  end
end
