class AddColumnsToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :posts, :reference
  end
end
