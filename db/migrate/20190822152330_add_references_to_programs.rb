class AddReferencesToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_reference :programs, :user,foreign_key: true
    add_reference :programs, :test,foreign_key: true
  end
end
