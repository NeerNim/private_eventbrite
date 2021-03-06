class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.string :title
      t.date :date
      t.time :time
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
