class AddAgeAndSexToPets < ActiveRecord::Migration
  def change
    add_column :pets, :age, :integer
    add_column :pets, :sex, :string
  end
end
