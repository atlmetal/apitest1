class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :image
      t.string :genres, array: true
      t.integer :popularity
      t.string :spotify_url
      t.string :spotify_id

      t.timestamps
    end
  end
end
