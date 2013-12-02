class Property < ActiveRecord::Base
  belongs_to :owner
  has_many :units, dependent: :destroy

  validates :owner, presence: true
  validates :address, presence: true
end
