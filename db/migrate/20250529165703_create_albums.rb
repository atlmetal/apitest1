class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.string :image
      t.string :spotify_url
      t.string :total_tracks, null: false
      t.string :spotify_id
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
