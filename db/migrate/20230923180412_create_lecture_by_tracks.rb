class CreateLectureByTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :lecture_by_tracks do |t|
      t.integer :lecture_id
      t.integer :track_id
      t.time :start_time

      t.timestamps
    end
  end
end
