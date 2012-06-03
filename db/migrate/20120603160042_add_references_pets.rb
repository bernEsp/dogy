class AddReferencesPets < ActiveRecord::Migration
  def up
    add_column :pets, :user_id, :integer
  end

  def down
    remove_column :pets, :user_id
  end
end
