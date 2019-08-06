class AddStarRatingToUserGames < ActiveRecord::Migration[5.2]
  def change
    add_column :user_games, :star_rating, :integer
  end
end
