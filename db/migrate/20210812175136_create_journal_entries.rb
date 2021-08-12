class CreateJournalEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :journal_entries do |t|
      t.date :date
      t.decimal :amount
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
