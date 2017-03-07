class CreateBeefPlaceToEats < ActiveRecord::Migration[5.0]
  def change
    create_table :beef_place_to_eats do |t|
      t.integer :beef_id
      t.integer :place_to_eat_id

      t.timestamps
    end
  end
end
