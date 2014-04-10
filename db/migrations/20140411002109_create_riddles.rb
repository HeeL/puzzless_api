class CreateRiddles < ActiveRecord::Migration
  def change
    create_table :riddles do |t|
      t.string :title
      t.integer :category_id, index: true
      t.text :text
      t.string :hint
      t.string :answer
    end
  end
end
