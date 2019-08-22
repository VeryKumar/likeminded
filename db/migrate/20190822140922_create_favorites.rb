class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :favoriter_id
      t.integer :favoritee_id
    end
  end
end
