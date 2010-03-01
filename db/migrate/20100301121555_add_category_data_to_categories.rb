class AddCategoryDataToCategories < ActiveRecord::Migration
  def self.up
    down
    category = Category.create(:name => "BOPP TAPE JUMBO ROLL")
    category.save!
    
    category = Category.create(:name => "INVISIBLE TAPE")
    category.save!
    
    category = Category.create(:name => "SUPER CLEAR TAPE")
    category.save!
    
    category = Category.create(:name => "BOPP PACKING TAPE")
    category.save!
    
    category = Category.create(:name => "BOPP TAPE")
    category.save!
    
    category = Category.create(:name => "LLDPE STRETCH FILM")
    category.save!
    
    category = Category.create(:name => "STATIONERY TAPE")
    category.save!
    
    category = Category.create(:name => "MASKING TAPE")
    category.save!
    
    category = Category.create(:name => "BOPP ADHESIVE TAPE")
    category.save!
    
    category = Category.create(:name => "BAG SEALING TAPE")
    category.save!
    
  end

  def self.down
    Category.delete_all
  end
end
