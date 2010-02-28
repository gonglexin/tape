class CreateTapes < ActiveRecord::Migration
  def self.up
    create_table :tapes do |t|
      t.string :title
      t.string :image_url
      t.text :memo

      t.timestamps
    end
  end

  def self.down
    drop_table :tapes
  end
end
