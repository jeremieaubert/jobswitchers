class MoveCategoryAnswersToQuestions < ActiveRecord::Migration[5.2]
  def change
  add_column :questions, :tech_a, :string
  add_column :questions, :social_a, :string
  add_column :questions, :craft_a, :string
  end
end
