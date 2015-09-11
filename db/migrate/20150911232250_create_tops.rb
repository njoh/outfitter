class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :picture

      t.timestamps
    end
  end
end
