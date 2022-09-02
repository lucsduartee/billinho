class Bill < ApplicationRecord
  include AASM

  aasm column: :state do
    state :pending, initial: true
    state :overdue
    state :paid
  end
end
