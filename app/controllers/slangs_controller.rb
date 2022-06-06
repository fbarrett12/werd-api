class SlangsController < ApplicationController
    def index
        @slangs = Slang.all
        render json: SlangSerializer.new(@slangs).serializable_hash
    end

    def create
        @slang = Slang.create(slang_params)
        render json: SlangSerializer.new(@slang).serializable_hash
    end

    def show
        @slang = Slang.find(params[:id])
        render json: SlangSerializer.new(@slang).serializable_hash
    end

    def shuffledWords
        words = Slang.scrambler
        render json: SlangSerializer.new(words).serializable_hash.to_json
    end

    private

    def slang_params
        params.require(:slang).permit(:term, :definition)
    end
end

