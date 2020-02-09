class ChoicesController < ApplicationController
    def index
        @choices = Choice.all
        render json: ChoiceSerializer.new(@choices).serializable_hash
    end

    def create
        @choice = Choice.create(choice_params)
        render json: ChoiceSerializer.new(@choice).serializable_hash
    end

    private

    def choice_params
        params.permit(:definition)
    end
end
