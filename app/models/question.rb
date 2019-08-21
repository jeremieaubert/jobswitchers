class Question < ApplicationRecord
  has_one :answer

  def is_tech?
    self.tech_a == "1"
  end

  def is_craft?
    self.craft_a == "1"
  end

  def is_social?
    self.social_a == "1"
  end
end
