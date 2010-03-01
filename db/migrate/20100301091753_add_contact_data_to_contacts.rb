class AddContactDataToContacts < ActiveRecord::Migration
  def self.up
    down
    contact = Contact.create(:name => "jason",
                             :email => "jason@bswtape.com.cn",
                             :tel => "86-755-89903515",
                             :fax => "86-755-84294993",
                             :address => "H.K ADD:UNIT 1A,11/F,HO KING COMM,CENTER 2-16 FA YUAN ST MONGKIK KLN,HONHKONG\n" +
                                          "SHENZHEN ADD:ZHUGUSHI VILLAGE,WULIAN,LONGCHENG STREET,LONGGANG DISTRICT,SHENZHEN,CHINA")
    contact.save!
  end

  def self.down
    Contact.delete_all
  end
end
