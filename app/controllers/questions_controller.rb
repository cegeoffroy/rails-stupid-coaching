class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question] == 'what time is it?'
      @answer = Time.now
    elsif params[:question] == 'hello'
      @answer = 'hi, what do you want?'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
