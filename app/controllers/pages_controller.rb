class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def programs
    @program = Program.first
  end

  def home
  end
end
