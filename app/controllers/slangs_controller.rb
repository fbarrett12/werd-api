class SlangsController < ApplicationController
    def index
        @slangs = Slang.all
    end

    def create
        @slang = Slang.create(slang_params)
    end

    def show
        @slang = Slang.find(params[:id])
    end

    private

    def slang_params
        params.permit(:term, :definition)
    end
end

