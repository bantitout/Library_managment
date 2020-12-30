class AddStudentToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :student
  end
end
