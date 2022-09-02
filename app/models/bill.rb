class Bill < ApplicationRecord
  include AASM

  belongs_to :enrollments

  aasm column: :state do
    state :pending, initial: true
    state :overdue
    state :paid
  end
end
