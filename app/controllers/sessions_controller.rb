class SessionsController < ApplicationController
    def omniauth
        #provider = auth['provider']
        #name = auth['info']['name']
        user = User.find_or_create_by(uid: auth['uid'],
                provider: auth['provider']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)
        end

        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = user.errors.full_messages.join("")
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to '/login'
    end

    def new

    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid credentials. Please try again."
            redirect_to login_path
        end
    end

    

    private

    def auth
        request.env['omniauth.auth']
    end
end
