class AddBestScoreToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :best_score, :integer
  end
end
