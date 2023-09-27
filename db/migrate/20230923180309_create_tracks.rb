class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :event_id
      t.boolean :finished

      t.timestamps
    end
  end
end
