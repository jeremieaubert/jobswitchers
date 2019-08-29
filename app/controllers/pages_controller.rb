class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def programs
    @test = Test.find(params[:format])
    @program = Program.find(params[:format])
    @order = Order.find(params[:format])
  end

  def home
  end
end
