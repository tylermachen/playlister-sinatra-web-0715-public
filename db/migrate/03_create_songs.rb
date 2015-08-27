class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :artist
      t.timestamps null: false
    end
  end
end
