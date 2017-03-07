class CreateBeefEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :beef_evaluations do |t|
      t.integer :beef_id
      t.integer :evaluation_id

      t.timestamps
    end
  end
end
