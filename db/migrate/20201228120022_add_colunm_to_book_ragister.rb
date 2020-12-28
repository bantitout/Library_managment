class AddColunmToBookRagister < ActiveRecord::Migration[6.0]
  def change
    add_column :book_ragisters, :return_date, :datetime
  end
end
