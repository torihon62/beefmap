class CreateBeefPlaceToEats < ActiveRecord::Migration[5.0]
  def change
    create_table :beef_place_to_eats do |t|
      t.references :beef, foreign_key: true
      t.references :place_to_eat, foreign_key: true

      t.timestamps
    end
  end
end
