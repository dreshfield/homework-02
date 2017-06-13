class RenameTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :type, :btype
  end
end
