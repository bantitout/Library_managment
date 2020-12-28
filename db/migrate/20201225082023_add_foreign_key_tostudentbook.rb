class AddForeignKeyTostudentbook < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :studentbooks, :libraries
  end
end
