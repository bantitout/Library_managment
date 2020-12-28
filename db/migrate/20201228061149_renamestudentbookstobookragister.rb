class Renamestudentbookstobookragister < ActiveRecord::Migration[6.0]
  def change
    rename_table :studentbooks, :book_ragisters
  end
end
