class Rsvp < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.timestamps null: false
      t.string :attending
      t.string :name
      t.text :comment
    end
  end
end
