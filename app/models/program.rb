class Program < ApplicationRecord
  belongs_to :job
  monetize :price_cents
end
