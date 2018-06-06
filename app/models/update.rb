class Update < ActiveRecord::Base
  belongs_to :user
  belongs_to :beneficiary

  validates :user_id, :beneficiary_id, :notes, presence: true

end
