class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :venue
      t.string :start_time
      t.string :end_time
      t.string :ticket_price

      t.timestamps null: false
    end
  end
end
