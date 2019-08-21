class TestsController < ApplicationController
  def new
    @questions = Question.all
    @answer = Answer.new
    @test = Test.find(1)
  end

  def create
    end
end
