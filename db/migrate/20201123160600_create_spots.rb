class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :latitude
      t.string :longitude
      t.string :name
      t.text :description
      t.string :webcam_link
      t.string :windy_id
      t.string :msw_id
      t.string :windguru_id
      t.string :surfreport_id

      t.timestamps
    end
  end
end
