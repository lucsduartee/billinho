class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.string :course_name
      t.decimal :total_value
      t.integer :due_date
      t.integer :bills_quantity
      t.references :institution, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
