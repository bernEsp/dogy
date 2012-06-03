class AddReferenceToBreeds < ActiveRecord::Migration
  def change
    add_column :breeds, :pet_id, :integer
  end
end
