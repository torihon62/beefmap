class CreateBeefEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :beef_evaluations do |t|
      t.references :beef, foreign_key: true
      t.references :evaluation, foreign_key: true

      t.timestamps
    end
  end
end
