class Bill < ApplicationRecord
  include AASM

  belongs_to :enrollment

  aasm column: :state do
    state :pending, initial: true
    state :overdue
    state :paid
  end

  validates :value, presence: true
  validates :due_date, presence: true
end
