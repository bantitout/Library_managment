class CreateStudentbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :studentbooks do |t|
      t.references :book, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.datetime :assign_date
      t.datetime :return_date

      t.timestamps
    end
  end
end
