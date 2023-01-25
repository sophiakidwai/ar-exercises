class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, too_short: "%{count} characters is the minimum aloud" }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :carry_men_or_women_apparel

  def carry_men_or_women_apparel
    if mens_apparel.present? || womens_apparel.present?
      return true
    else
      errors.add(:mens_apparel, :womens_apparel, "Must contain either men/women apparel")
    end
  end
end
