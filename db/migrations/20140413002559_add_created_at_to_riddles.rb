class AddCreatedAtToRiddles < ActiveRecord::Migration
  def change
    add_column :riddles, :created_at, :datetime
  end
end
