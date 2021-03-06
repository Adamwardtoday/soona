class Inbox < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy


  MIN_NAME = 4
  MAX_NAME = 1000

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: MIN_NAME..MAX_NAME }
end
