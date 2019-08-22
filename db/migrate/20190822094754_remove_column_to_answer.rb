class RemoveColumnToAnswer < ActiveRecord::Migration[5.2]
  def change
  remove_column :answers, :tech_a, :string
  remove_column :answers, :social_a, :string
  remove_column :answers, :craft_a, :string
  end
end
