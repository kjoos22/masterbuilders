class SessionsController < ApplicationController
    def omniauth
        #provider = auth['provider']
        #name = auth['info']['name']
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
        end
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end
