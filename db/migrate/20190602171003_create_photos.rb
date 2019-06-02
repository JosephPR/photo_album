class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :image_url
      t.references :album
      t.timestamps
    end
  end
end
