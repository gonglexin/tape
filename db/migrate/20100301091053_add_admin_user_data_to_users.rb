class AddAdminUserDataToUsers < ActiveRecord::Migration
  def self.up
    down
    user = User.create(:name => "yangyi",
                       :password => "123",
                       :password_confirmation => "123")
    user.save!
  end

  def self.down
    User.delete_all
  end
end
