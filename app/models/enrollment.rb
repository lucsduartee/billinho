class Enrollment < ApplicationRecord
  has_many :bills
  belongs_to :students
  belongs_to :institutions
end
