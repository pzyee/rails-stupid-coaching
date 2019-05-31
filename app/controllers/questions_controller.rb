class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = ''
    @answer = params[:question].to_s
    string_length = @answer.length
    if @answer[string_length - 1] != '?'
      if @answer == 'I am going to work right now!'
        @response = ''
      else
        @response = 'I don\'t care, get dressed and go to work!'
      end
    else
      @response = 'Silly question, get dressed and go to work!'
    end
  end
end
