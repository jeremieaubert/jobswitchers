class Program < ApplicationRecord

  has_many :jobs
  belongs_to :test
  belongs_to :user
  monetize :price_cents

end
