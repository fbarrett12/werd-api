class QuestionsController < ApplicationController
    before_action :set_band, only: [:show, :update, :destroy]

    def create
        @question = Question.new(question_params)
    
        if @question.save
          render json: @question, status: :created, location: @question
        else
          render json: @question.errors, status: :unprocessable_entity
        end
      end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
        @question = Question.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def question_params
        params.require(:question).permit(:slang_id, :choice_id)
    end
end
