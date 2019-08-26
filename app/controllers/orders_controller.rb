class OrdersController < ApplicationController
  def create
    program = Program.find(params[:program_id])
    order = Order.create!(program_sku: program.sku, amount: program.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
