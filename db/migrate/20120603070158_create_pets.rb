class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.text :caracteristicas
      t.text :trucos

      t.timestamps
    end
  end
end
