class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :product
      t.references :brand
      t.integer :category
      t.decimal :calories
      t.text :notes

      t.timestamps
    end
  end
end
