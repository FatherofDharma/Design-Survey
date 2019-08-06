class Question < ApplicationRecord
  belongs_to :survey

  validates :name, presence: true
  validates_length_of :name, maximum: 100
end
