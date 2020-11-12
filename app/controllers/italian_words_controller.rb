class ItalianWordsController < ApplicationController

    def index
        words = ItalianWord.all 
        render json: words, except: [:created_at, :updated_at]
    end

    def show
        word = ItalianWord.find(params[:id])
        render json: word, except: [:created_at, :updated_at]
    end

    def create
        word = ItalianWord.create(word_params)
        render json: word, except: [:created_at, :updated_at]
    end

    private

    def word_params
        params.require(:italian_word).permit(:word, :meaning, :pos, :score)
    end
end
