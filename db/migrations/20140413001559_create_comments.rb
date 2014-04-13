class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.integer :riddle_id, index: true
      t.text :text
      t.datetime :created_at
    end
  end
end
