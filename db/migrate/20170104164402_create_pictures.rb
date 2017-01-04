class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :image_id
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
