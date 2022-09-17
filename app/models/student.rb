class Student < ApplicationRecord
  has_many :enrollments

  validates_associated :enrollments
  validates :name, uniqueness: true, presence: true
  validates :cpf, uniqueness: true, presence: true, numericality: { only_integer: true }
  validates :gender, presence: true, inclusion: { in: %w(M F Other) }
  validates :payment_way, presence: true, inclusion: { in: %w(Boleto Cartão) }
end
