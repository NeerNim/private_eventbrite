class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.references :event, null: false, foreign_key: true
      t.integer :attendee_id

      t.timestamps

    end
    add_foreign_key :attendances, :users, column: :attendee_id
  end
end
