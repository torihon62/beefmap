class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.date :evaluation_date
      t.string :place
      t.float :latitude
      t.float :longitude
      t.integer :first_impression
      t.integer :soft
      t.integer :juicy
      t.integer :taste_wide
      t.integer :cost

      t.timestamps
    end
  end
end
