class CreateLectures < ActiveRecord::Migration[7.0]
  def change
    create_table :lectures do |t|
      t.string :name
      t.integer :lecture_minutes
      t.boolean :lightning
      t.integer :event_id

      t.timestamps
    end
  end
end
