class User < ActiveRecord::Base
  has_secure_password

  has_many :articles

  def self.confirm(email_param, password_param)
    found_user = find_by({email: email_param})
    found_user.try(:authenticate, password_param)
  end

end
