class AddDomainToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :domain, :string
  end
end
