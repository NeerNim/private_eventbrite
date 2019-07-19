class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :time
      t.string :date
      t.string :location

      t.timestamps
    end
  end
end
