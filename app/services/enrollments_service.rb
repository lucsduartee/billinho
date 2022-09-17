module EnrollmentsService
  class << self
    def create(payload)
      enrollment = Enrollment.create(
        course_name: payload[:course_name],
        total_value: payload[:total_value],
        due_date: payload[:due_date],
        bills_quantity: payload[:bills_quantity],
        institution_id: payload[:institution_id],
        student_id: payload[:student_id]
      )

      payload[:bills_quantity].times do |i|
        Bill.create(
          value: payload[:total_value] / payload[:bills_quantity],
          due_date: bills_due_dates(set_first_due_date(payload[:due_date]), payload[:bills_quantity])[i],
          enrollment: enrollment,
        )
      end

      return enrollment
    end

    private
    def set_first_due_date(due_date)
      if due_date.to_i <= Date.today.day
        return Date.today.next_month
      end

      return Date.new(Date.today.year, Date.today.month, due_date.to_i)
    end

    def bills_due_dates(first_due_date, quantity)
      due_dates = [first_due_date]
      quantity.times do |i|
        due_dates << due_dates[i].next_month
      end
      return due_dates
    end
  end
end
