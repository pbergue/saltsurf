class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.references :spot, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.integer :rating
      t.datetime :timestamp

      t.timestamps
    end
  end
end
