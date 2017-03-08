class CreateBeefCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :beef_categories do |t|
      t.references :beef, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
