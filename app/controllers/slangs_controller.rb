class SlangsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]

    def index
        @slangs = Slang.all
        render json: SlangSerializer.new(@slangs).serializable_hash.to_json
    end

    def create
        @slang = Slang.create(slang_params)
        render json: SlangSerializer.new(@slang).serializable_hash.to_json
    end

    def show
        @slang = Slang.find(params[:id])
        render json: SlangSerializer.new(@slang).serializable_hash
    end

    def update
        if @slang.update(slang_params)
          render json: SlangSerializer.new(@slang).serializable_hash.to_json
        else
          render json: @slang.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @slang.destroy
    end

    def shuffledWords
        words = Slang.scrambler
        render json: SlangSerializer.new(words).serializable_hash.to_json
    end

    private

    def set_product
        @slang = Slang.find(params[:id])
      end

    def slang_params
        params.require(:slang).permit(:term, :definition, :location_id)
    end
end

