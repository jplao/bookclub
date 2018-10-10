class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :decription, :description
  end
end
