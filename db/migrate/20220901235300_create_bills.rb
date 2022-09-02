class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.decimal :value
      t.date :due_date
      t.string :aasm_state
      t.references :enrollment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
