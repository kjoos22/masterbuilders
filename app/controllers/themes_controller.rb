class ThemesController < ApplicationController

    def index
        @themes = Theme.ordered_by_name
    end

    def show
        @theme = Theme.find(params[:id])
    end

    def new
        @theme = Theme.new
    end

    def create
        @theme = Theme.new(theme_params)
        if @theme.save
            redirect_to theme_path(@theme)
        else
            @errors = @theme.errors.full_messages.join(". ")
            render :new
        end
    end

    def edit
        @theme = Theme.find(params[:id])        
    end

    def update
        @theme = Theme.find(params[:id]) 
        if @theme.update(theme_params)
            redirect_to theme_path(@theme)
        else
            @errors = @theme.errors.full_messages.join(". ")
            render :edit
        end
    end

    def destroy
        Theme.find(params[:id]).destroy
        redirect_to themes_path
    end


end
