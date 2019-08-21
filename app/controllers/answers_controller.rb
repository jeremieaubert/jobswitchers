class AnswersController < ApplicationController
  def create
    Answer.create(params_answer)
    redirect_to root_path
  end

private
def params_answer
  params.require(:answer).permit(:craft_a)
end
end
