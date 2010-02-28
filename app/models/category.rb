class Category < ActiveRecord::Base
  has_many :tapes
  # for select
  TYPES = Category.all.collect { |c| [ c.name, c.id ]  }
end
