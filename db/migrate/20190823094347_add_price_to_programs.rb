class AddPriceToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_monetize :programs, :price, currency: { present: false }
  end
end
