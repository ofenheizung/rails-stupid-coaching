class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # raise
    @user_question = params["question"]
    @coach_answer = nil

    if @user_question == "I am going to work!"
    @coach_answer = "Great!"

      elsif @user_question == "Hello"
      @coach_answer = "Hello, what is your question then?"

      elsif @user_question.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"

      else
      @coach_answer = "I don't care, get dressed and go to work!"

    end
  end
end
