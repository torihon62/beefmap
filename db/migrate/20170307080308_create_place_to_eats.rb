class CreatePlaceToEats < ActiveRecord::Migration[5.0]
  def change
    create_table :place_to_eats do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :tel
      t.string :url

      t.timestamps
    end
  end
end
