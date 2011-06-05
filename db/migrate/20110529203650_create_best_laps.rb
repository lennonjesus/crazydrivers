class CreateBestLaps < ActiveRecord::Migration
  def self.up
    create_table :best_laps do |t|
      t.integer :driver
      t.integer :race

      t.timestamps
    end
  end

  def self.down
    drop_table :best_laps
  end
end
