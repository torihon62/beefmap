class CreateBeefs < ActiveRecord::Migration[5.0]
  def change
    create_table :beefs do |t|
      t.string :name

      t.timestamps
    end
  end
end
