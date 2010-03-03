class AddReferenceForHeroku < ActiveRecord::Migration
  def self.up
    # for heroku
    execute %{ALTER TABLE tapes ADD CONSTRAINT fk_tapes_categories FOREIGN KEY (category_id)  REFERENCES categories(id)} 
  end

  def self.down
    # execute %{
    #       
    #     }
  end
end
