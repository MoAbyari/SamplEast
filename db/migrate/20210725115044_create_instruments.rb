class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.text :name
      t.text :family
      t.text :country
      t.text :image

      t.timestamps
    end
  end
end
