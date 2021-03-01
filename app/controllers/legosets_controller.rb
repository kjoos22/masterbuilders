class LegosetsController < ApplicationController
    include LegosetsHelper

    def index
        if params[:user_id]
            @legosets = Legoset.where(user_id: params[:user_id])           
        else
            @legosets = Legoset.ordered_by_name
        end
    end

    def show
        @legoset = Legoset.find(params[:id])
    end

    def new
        @legoset = Legoset.new
        @legoset.build_theme
    end

    def create        
        if params[:legoset][:theme]
            params[:legoset][:theme_id] = Theme.find_by(name: params[:legoset][:theme]).id
            params[:legoset].delete(:theme)            
        end
        @legoset = Legoset.new(legoset_params)
        @legoset.user = current_user
        if @legoset.save
            redirect_to legoset_path(@legoset)
        else
            @errors = @legoset.errors.full_messages.join(". ")
            render :new
        end
    end

    def edit
        @legoset = Legoset.find(params[:id])
        if !@legoset.theme
            @legoset.build_theme
        end
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
        params.require(:legoset).permit(:name, :number_of_pieces, :price, :age,
            :theme_id, :theme, theme_attributes: [:name])
    end
end
