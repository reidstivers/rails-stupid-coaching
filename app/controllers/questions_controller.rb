class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answer = coach_answer(@questions)
  end

  def coach_answer(question)
    if question.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif question.include?("I am going to work")
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
