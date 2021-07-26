class CreateSamplesSoundbags < ActiveRecord::Migration[5.2]
  def change
    create_table :samples_soundbags do |t|
      t.integer :sample_id
      t.integer :soundbag_id
    end
  end
end
