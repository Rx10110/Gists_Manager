class ChangeColumnName < ActiveRecord::Migration
  def change
      rename_column :gists, :title, :description
  end
end
