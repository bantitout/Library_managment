class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :class1

      t.timestamps
    end
  end
end
