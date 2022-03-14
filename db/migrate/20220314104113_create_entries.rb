class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :date
      t.string :title
      t.string :entry

      t.timestamps
    end
  end
end
