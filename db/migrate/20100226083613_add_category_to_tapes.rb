class AddCategoryToTapes < ActiveRecord::Migration
  def self.up
    change_table :tapes do |t|
      t.references :category
    end
  end

  def self.down
    change_table :tapes do |t|
      t.remove :category_id
    end
  end
end
