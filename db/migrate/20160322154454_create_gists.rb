class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :title
      t.integer :client_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
