module LegosetsHelper
    
    def for_user?
        if params[:user_id]
            true
        else
            false
        end
    end
end
