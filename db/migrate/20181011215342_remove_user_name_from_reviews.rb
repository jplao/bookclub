class RemoveUserNameFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :user_name, :string
  end
end
