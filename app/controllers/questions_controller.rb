class QuestionsController < ApplicationController

    def index
        @questions = Question.all
    end

    def show
        @question = Question.find(params[:id])
        @solution = Solution.new
    end

end