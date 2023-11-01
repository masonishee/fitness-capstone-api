class RenamePasswordColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :paswword_digest, :password_digest
  end
end
