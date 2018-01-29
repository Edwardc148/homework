class ChangeIntegers < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :user_id
    remove_column :comments, :link_id
    add_column :comments, :user_id, :integer
    add_column :comments, :link_id, :integer
  end
end
