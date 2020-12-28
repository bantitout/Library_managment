class RenameColunmInBookRagisters < ActiveRecord::Migration[6.0]
  def change
    rename_column :book_ragisters, :return_date, :due_date
  end
end
