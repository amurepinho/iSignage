class CreateSessions < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.integer :user_id
      t.boolean :active, {:default => true}
      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
