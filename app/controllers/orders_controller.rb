class OrdersController < ApplicationController
  def create
    program = Program.find(params[:program_id])
    order = Order.create!(amount: program.price, state: 'pending', user: current_user)

    redirect_to professionals_path
  end

  def show
  @order = current_user.orders.where(state: 'paid').find(params[:id])
  end
end
