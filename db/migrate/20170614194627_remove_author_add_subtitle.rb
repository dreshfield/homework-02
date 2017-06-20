class RemoveAuthorAddSubtitle < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :author
    add_column :books, :subtitle, :string
  end
end
