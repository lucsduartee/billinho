class Institution < ApplicationRecord
  has_many :enrollments

  validates_associated :enrollments
  validates :name, uniqueness: true, presence: true
  validates :cnpj, uniqueness: true, presence: true, numericality: { only_integer: true }
  validates :kind, presence: true, inclusion: { in: %w(Universidade Escola Creche) }
end
