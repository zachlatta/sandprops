class Owner < ActiveRecord::Base
  has_one :user, as: :role, dependent: :destroy
  has_many :properties, dependent: :destroy

  accepts_nested_attributes_for :user

  validates :user, presence: true
end
