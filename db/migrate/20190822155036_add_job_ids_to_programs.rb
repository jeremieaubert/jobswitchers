class AddJobIdsToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :job_ids, :integer, array: true, default: []
  end
end
