class CreateBacklogItems < ActiveRecord::Migration
  def self.up
    create_table :backlog_items do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.decimal :priority
      t.references :backlog

      t.timestamps
    end
  end

  def self.down
    drop_table :backlog_items
  end
end
