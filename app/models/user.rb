class User < ApplicationRecord
  validates_presence_of :name, :lastname, :email
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, with: VALID_EMAIL_REGEX
end
