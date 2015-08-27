class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.belongs_to :song
      t.timestamps null: false
    end
  end
end
