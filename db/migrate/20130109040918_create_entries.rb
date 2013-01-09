class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :description
      t.integer :users
      t.datetime :view_at
      t.string :url

      t.timestamps
    end
  end
end
