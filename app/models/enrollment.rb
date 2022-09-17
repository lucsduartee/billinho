class Enrollment < ApplicationRecord
  has_many :bills, dependent: :destroy
  belongs_to :student
  belongs_to :institution

  validates_associated :bills
  validates :course_name, presence: true
  validates :total_value, presence: true, numericality: { greater_than: 0 }
  validates :due_date, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
  validates :bills_quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
