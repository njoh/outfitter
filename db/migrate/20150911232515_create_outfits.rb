class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.integer :top_id
      t.integer :bottom_id
      t.datetime :date

      t.timestamps
    end
  end
end
