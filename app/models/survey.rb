class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy

  validates :name, presence: true

  before_save(:titleize_survey)

  private
    def titleize_survey
      self.name = self.name.titleize
    end
end
