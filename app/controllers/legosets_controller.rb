class LegosetsController < ApplicationController

    def index
        @legosets = Legosets.all
    end

    def show
        
    end
end
