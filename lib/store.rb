class Store < ActiveRecord::Base
  validates :name, length:{minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate  :at_least_one_apparel
  has_many  :employees

  before_destroy :check_for_employees

  private
    def at_least_one_apparel
      if !mens_apparel && !womens_apparel
        errors.add(:mens_apparel, "or womens_apparel must be true")
      end
    end

    def check_for_employees
      if self.employees.any?
        errors.add(:base, "Cannot delete store that has employees")
        false
      end
    end

end
