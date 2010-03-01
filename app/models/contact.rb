class Contact < ActiveRecord::Base
  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_presence_of :name, :email, :tel, :fax, :address
  validates_format_of :email, :with => EmailRegex
  # validates_numericality_of :tel, :fax
end
