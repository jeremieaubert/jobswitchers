class RemoveAnswerFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tests, :answer, foreign_key: true
  end
end
