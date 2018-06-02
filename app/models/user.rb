class User < ActiveRecord::Base
  has_secure_password

  has_many :updates
  has_many :beneficiaries, through: :updates

end
