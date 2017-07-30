class AddHeadingToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts,:heading,:string
  end
end
