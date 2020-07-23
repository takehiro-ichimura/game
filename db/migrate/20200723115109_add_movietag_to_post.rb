class AddMovietagToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :movetag, :string
  end
end