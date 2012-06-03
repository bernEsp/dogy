class AddReferenceToColors < ActiveRecord::Migration
  def change
    add_column :colors, :pet_id, :integer
  end
end
