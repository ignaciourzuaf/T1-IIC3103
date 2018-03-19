class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.date :fecha

      t.timestamps
    end
  end
end
