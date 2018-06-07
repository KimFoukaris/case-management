class Update < ActiveRecord::Base
  belongs_to :user
  belongs_to :beneficiary

  validates :notes, presence: true
  validates :user_id, presence: true
  validates :beneficiary_id, presence: true

end
