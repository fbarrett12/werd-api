class SlangsController < ApplicationController
    def index
        @slangs = Slang.all
    end

    def create
        @slang = Slang.create(slang_params)
    end

    private

    def slang_params
        params.permit(:term, :definition)
    end
end

