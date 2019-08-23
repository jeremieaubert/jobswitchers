class Question < ApplicationRecord
  has_many :answers

  def is_tech?
    tech_a == "1"
  end

  def is_craft?
    craft_a == "1"
  end

  def is_social?
    social_a == "1"
  end
end
