class AddDefaulterToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :defaulter, :boolean, default: true
  end
end
