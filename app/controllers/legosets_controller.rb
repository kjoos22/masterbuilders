class LegosetsController < ApplicationController

    def index
        @legosets = Legoset.ordered_by_name
    end

    def show
        @legoset = Legoset.find(params[:id])
    end
end
