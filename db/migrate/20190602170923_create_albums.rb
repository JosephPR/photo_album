class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :album_cover
      t.text :description
      t.timestamps
    end
  end
end
