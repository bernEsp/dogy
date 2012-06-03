class AddBornToPets < ActiveRecord::Migration
  def change
    add_column :pets, :born, :date
  end
end
