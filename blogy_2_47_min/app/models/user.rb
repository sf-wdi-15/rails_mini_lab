class User < ActiveRecord::Base

  has_many :articles

  has_secure_password

  validates_confirmation_of :email
  validates_presence_of :password_confirmation
  validates_presence_of :email_confirmation
  validates_uniqueness_of :email
  validates_presence_of :email

  def self.confirm(email_param, password_param)
    user = find_by({email: email_param})
    user.try(:authenticate, password_param)
  end

end
