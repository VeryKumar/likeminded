class Tests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :e_value
      t.integer :a_value
      t.integer :c_value
      t.integer :n_value
      t.integer :o_value
    end
  end
end
