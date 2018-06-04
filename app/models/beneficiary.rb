class Beneficiary < ActiveRecord::Base
  has_many :updates
  has_many :users, through: :updates

  validates :name, presence: true
  validates :id_number, presence: true, uniqueness: true, length: { is: 7 }

end
