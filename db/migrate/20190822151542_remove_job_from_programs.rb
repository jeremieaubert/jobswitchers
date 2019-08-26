class RemoveJobFromPrograms < ActiveRecord::Migration[5.2]
  def change
    remove_reference :programs, :job, foreign_key: true
  end
end
