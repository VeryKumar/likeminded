class RemoveTraitsFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_column :tests, :e_value, :string
    remove_column :tests, :a_value, :string
    remove_column :tests, :c_value, :string
    remove_column :tests, :n_value, :string
    remove_column :tests, :o_value, :string
  end
end
