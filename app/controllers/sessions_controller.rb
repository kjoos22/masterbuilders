class SessionsController < ApplicationController
    def omniauth
        #provider = auth['provider']
        #name = auth['info']['name']
        user = User.find_or_create_by(uid: auth['uid'],
                provider: auth['provider']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
        end

        if user.valid?
            redirect_to 
        else
            flash[:message] = user.errors.full_messages.join("")
            redirect_to
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end
