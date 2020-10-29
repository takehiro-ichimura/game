class ReaddColumnToPost < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :tags, foreign_key: true
  end
end
