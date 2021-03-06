class TestsController < ApplicationController
  def new
    @questions = Question.all
    @answer = Answer.new
    @test = Test.new

    @program = Program.create(user: current_user, test: @test, price_cents: 2000)
  end

  def create
    tech_a = 0
    social_a = 0
    craft_a = 0

    @questions = Question.all
    @questions.each do |q|
      response = params["group#{q.id}".to_sym]
      # creation d'un record Answer

      if response == "1"
        if q.is_tech?
          tech_a += 10

          Answer.create(user: current_user, question: q, response: "1")
        elsif q.is_social?
          social_a += 10

          Answer.create(user: current_user, question: q, response: "1")
        elsif q.is_craft?
          craft_a += 10

          Answer.create(user: current_user, question: q, response: "1")
        end
      end
    end

    value = {type: :tech, val: tech_a}
    if social_a > value[:val]
      value = {type: :social, val: social_a}
    end
    if craft_a > value[:val]
      value = {type: :craft, val: craft_a}
    end
    @test = Test.create(user: current_user, best_score: value[:val], domain: value[:type].to_s)

    @order = Order.create!(amount: Program.last.price, state: 'pending', user: current_user)


    redirect_to programs_path(@test, @order)
  end
end
