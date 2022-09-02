class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :cpf
      t.string :gender
      t.string :payment_way
      t.date :birthday
      t.integer :cellphone

      t.timestamps
    end
  end
end
