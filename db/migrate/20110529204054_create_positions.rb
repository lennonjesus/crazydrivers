class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.integer :driver_id
      t.integer :race_id

      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
