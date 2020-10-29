class RemoveColumnFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :posts, :reference
    remove_column :posts, :tags, :reference
  end
end
