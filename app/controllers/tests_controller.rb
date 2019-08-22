class TestsController < ApplicationController
  def new
    @questions = Question.all
    @answer = Answer.new
    @test = Test.new
  end

  def create

    tech_a = 0
    social_a = 0
    craft_a = 0

    @questions = Question.all
    @questions.each do |q|
      response = params["group#{q.id}".to_sym]
      if response == "1"
        if q.is_tech?
          tech_a += 1
        elsif q.is_social?
          social_a += 1
        elsif q.is_craft?
          craft_a += 1
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
  end
    end

