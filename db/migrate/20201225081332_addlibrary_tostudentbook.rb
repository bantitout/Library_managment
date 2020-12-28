class AddlibraryTostudentbook < ActiveRecord::Migration[6.0]
  def change
    add_reference :studentbooks, :library

  end
end
