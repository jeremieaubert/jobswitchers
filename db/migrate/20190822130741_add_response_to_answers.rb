class AddResponseToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :response, :string
  end
end
