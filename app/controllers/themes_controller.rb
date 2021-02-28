class ThemesController < ApplicationController

    def index
        @themes = Theme.ordered_by_name
    end

    def show

    end


end
