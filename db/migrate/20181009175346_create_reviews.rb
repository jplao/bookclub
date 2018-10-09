class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :decription
      t.integer :score
      t.string :user_name

      t.timestamp
    end
  end
end
