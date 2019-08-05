class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :location
      t.integer :entrance_fee
      t.integer :prize
      t.boolean :host
      t.integer :game_id

      t.timestamps
    end
  end
end
