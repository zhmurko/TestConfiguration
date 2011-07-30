class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :caption
      t.text :value
      t.string :web_type

      t.timestamps
    end
  end

  def self.down
    drop_table :settings
  end
end
