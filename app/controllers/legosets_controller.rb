class LegosetsController < ApplicationController

    def index
        @legosets = Legoset.ordered_by_name
    end

    def show
        @legoset = Legoset.find(params[:id])
    end

    def new
        @legoset = Legoset.new
    end

    def create
        @legoset = Legoset.new(legoset_params)
        if @legoset.save
            redirect_to legoset_path(@legoset)
        else
            @errors = @legoset.errors.full_messages.join(". ")
            render :new
        end
    end

    def edit
        @legoset = Legoset.find(params[:id])        
    end

    def update
        @legoset = Legoset.find(params[:id]) 
        if @legoset.update(legoset_params)
            redirect_to legoset_path(@legoset)
        else
            @errors = @legoset.errors.full_messages.join(". ")
            render :edit
        end
    end

    def destroy
        Legoset.find(params[:id]).destroy
        redirect_to legosets_path
    end

    private

    def legoset_params
        params.require(:legoset).permit(:name, :number_of_pieces, :price, :age)
    end
end
