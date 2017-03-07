class CreateBeefCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :beef_categories do |t|
      t.integer :beef_id
      t.integer :category_id

      t.timestamps
    end
  end
end
