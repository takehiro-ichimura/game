class RemoveImageUrlToPost < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :image_url, :string
    add_column :posts, :image_out_url, :string
  end
end
