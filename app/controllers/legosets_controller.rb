class LegosetsController < ApplicationController

    def index
        @legosets = Legoset.all
    end

    def show
        
    end
end
