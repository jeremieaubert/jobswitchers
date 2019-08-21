class AddAnswerToTest < ActiveRecord::Migration[5.2]
  def change
    add_reference :tests, :answer, foreign_key: true
  end
end
