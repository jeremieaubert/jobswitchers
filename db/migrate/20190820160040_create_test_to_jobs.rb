class CreateTestToJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :test_to_jobs do |t|
      t.references :test, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
