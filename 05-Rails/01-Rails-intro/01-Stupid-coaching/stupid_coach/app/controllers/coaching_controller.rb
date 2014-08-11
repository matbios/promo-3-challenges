class CoachingController < ApplicationController

  def answer
    @query = params[:query]
    if @query == "hello"
      @answer = "— hello you"
      elsif @query == "what should i do?"
      @answer = "I don't care my boy!"
      else
      @answer = "I don't understand..."
    end
  end

  def ask

  end

end
