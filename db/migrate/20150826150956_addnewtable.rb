class Addnewtable < ActiveRecord::Migration
  def self.up
    create_table :parses do |t|
      t.string   :fname
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :parses
  end
end
