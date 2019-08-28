class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def programs
    @test = Test.find(params[:format])
    @program = Program.create(user: current_user, test: @test, price_cents: 200)
  end

  def home
  end
end
