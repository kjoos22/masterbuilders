class LegosetsController < ApplicationController

    def index
        @legosets = Legoset.all
    end

    def show
        @legoset = Legoset.find(params[:id])
    end
end
