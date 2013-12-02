class Unit < ActiveRecord::Base
  belongs_to :property

  has_attached_file :lease

  validates :property, presence: true
  validates :number, presence: true
  validates :rent, presence: true
end
