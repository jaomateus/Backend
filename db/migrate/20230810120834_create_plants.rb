class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :latin_name, index: true, unique: true
      t.string :common_name
      t.text :description
      t.timestamps
    end
  end
end
