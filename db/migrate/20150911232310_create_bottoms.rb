class CreateBottoms < ActiveRecord::Migration
  def change
    create_table :bottoms do |t|
      t.string :picture

      t.timestamps
    end
  end
end
