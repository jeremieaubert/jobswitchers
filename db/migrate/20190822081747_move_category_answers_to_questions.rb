class MoveCategoryAnswersToQuestions < ActiveRecord::Migration[5.2]
  def up
  add_column :questions, :tech_a, :string
  add_column :questions, :social_a, :string
  add_column :questions, :craft_a, :string
  end

  def down
  remove_column :answers, :tech_a, :string
  remove_column :answers, :social_a, :string
  remove_column :answers, :craft_a, :string
  end
end
