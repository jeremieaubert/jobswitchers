class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.references :answer, foreign_key: true
      t.string :current_field

      t.timestamps
    end
  end
end
