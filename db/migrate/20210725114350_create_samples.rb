class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.text :name
      t.float :BPM
      t.text :musicalkey
      t.integer :instrument_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
