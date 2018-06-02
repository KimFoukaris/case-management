class Beneficiary < ActiveRecord::Base
  has_many :updates
  has_many :users, through: :updates

end
