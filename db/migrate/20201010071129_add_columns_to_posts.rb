class AddColumnsToPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :tags, :string
    add_column :posts, :tags, :reference
  end
end
